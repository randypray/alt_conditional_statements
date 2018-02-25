require_relative '../alternative_ifs/spec_helper'

describe 'Convert policy number to to different formats depending in file name' do

  policy_number = 'ACP BP913202015868'
  let(:obtain_policy_for_file) { Runner::ObtainPolicyNumberForFile.new(policy_number) }

  it "returns a hash with field name as key and policy number as value" do
    policy_hash = obtain_policy_for_file
    expected_hash = {plcy_nbr_plcy_period: policy_number}
    expect(policy_hash).to eq expected_hash
  end

end

