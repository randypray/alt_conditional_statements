module Conversion
  class CaseStatment

    def convert_state_char_to_number(state_char)
      case state_char
        when 'AL'
          '01'
        when 'AK'
          '02'
        when 'AZ'
          '04'
        when 'AR'
          '05'
        when 'CA'
          '06'
        when 'CO'
          '08'
        when 'CT'
          '09'
        when 'DE'
          '10'
        when 'DC'
          '11'
        when 'FL'
          '12'
        when 'GA'
          '13'
        when 'HI'
          '15'
        when 'ID'
          '16'
        when 'IL'
          '17'
        when 'IN'
          '18'
        when 'IA'
          '19'
        else
          ' '
      end
    end

    def convert_true_false(true_false)
      case true_false
        when 'false'
          'N'
        when 'true'
          'Y'
        else
          ' '
      end
    end
  end
end