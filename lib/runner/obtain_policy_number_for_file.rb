module Runner
  class ObtainPolicyNumberForFile

    # policy_number is in this format ACP BP913202015868

    def initialize(policy_number)
      init(policy_number)
    end

    def policy_number(policy_number)
      init(policy_number)
    end

    def init(policy_number)
      @policy_number = policy_number
      @policy_number_prefixa = policy_number[0..3]
      @policy_number_prefixb = policy_number[4..7]
      @policy_number_policy = policy_number[8..17]
    end

    def ids_downstream_extract
      downstream_extract
    end

    def ids_downstream_extract_wc
      downstream_extract
    end

    def ids_downstream_extract_ba
      downstream_extract
    end

    def eds_5001_batch_support_module
      key_hash = {bswc2000_x_prefix_a: @policy_number_prefixa}
      key_hash[:bswc2000_x_prefix_b] = @policy_number_prefixb
      key_hash[:bswc2000_x_policy_id] = @policy_number_policy
      key_hash
    end

    def eds_5002_distribution_bop_record
      distribution_record
    end

    def eds_5202_distribution_wc_record
      distribution_record
    end

    def eds_5302_distribution_ba_record
      distribution_record
    end

    def eds_5002_accounting_bop_record
      accounting_record
    end

    def eds_5202_accounting_wc_record
      accounting_record
    end

    def eds_5302_accounting_ba_record
      accounting_record
    end

    def hsb_5003_cyberone_310
      key_hash = {sfw00340_c_prefix_1: @policy_number_prefixa}
      key_hash[:sfw00340_c_prefix_2] = @policy_number_prefixb
      key_hash[:sfw00340_c_policy_seq_nbr] = @policy_number[11..17]
      key_hash
    end

    def hsb_5003_cyberone_320
      {sfw00320_c_pol_num: @policy_number}
    end

    def hsb_5003_data_compromise_420
      {sfw00420_c_pol_num: @policy_number}
    end

    def hsb_5003_equipment_breakdown_policy_220
      {sfw00220_c_pol_num: @policy_number}
    end

    def hsb_5003_equipment_breakdown_location_230
      {sfw00230_c_pol_num: @policy_number}
    end

    def iso_5004_phwprop_bop_record
      {phwprop_x_policy_number: @policy_number}
    end

    def iso_5004_phwprp1_bop_record
      {phwprp1_x_policy_number: @policy_number}
    end

    def iso_5004_phwmisc_bop_record
      {phwmisc_x_policy_number: @policy_number}
    end

    def iso_5004_phwpolr_bop_record
      {phwpolr_x_policy_number: @policy_number}
    end

    def iso_5004_phwsubj_bop_record
      {phwsubj_x_policy_number: @policy_number}
    end

    private

    def distribution_record
      key_hash = {dprexan1: @policy_number_prefixa}
      key_hash[:dprexbn1] = @policy_number_prefixb
      key_hash[:dpolnun1] = @policy_number_policy
      key_hash
    end

    def accounting_record
      key_hash = {aprexan1: @policy_number_prefixa}
      key_hash[:aprexbn1] = @policy_number_prefixb
      key_hash[:apolnun1] = @policy_number_policy
      key_hash
    end

    def downstream_extract
      {plcy_nbr_plcy_period: @policy_number}
    end
  end
end
