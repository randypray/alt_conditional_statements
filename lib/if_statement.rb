module Conversions
  class IfStatement

    def convert_state_char_to_number(state_char)
      if state_char == 'AL'
        '01'
      elsif state_char == 'AK'
        '02'
      elsif state_char == 'AZ'
        '04'
      elsif state_char == 'AR'
        '05'
      elsif state_char == 'CA'
        '06'
      elsif state_char == 'CO'
        '08'
      elsif state_char == 'CT'
        '09'
      elsif state_char == 'DE'
        '10'
      elsif state_char == 'DC'
        '11'
      elsif state_char == 'FL'
        '12'
      elsif state_char == 'GA'
        '13'
      elsif state_char == 'HI'
        '15'
      elsif state_char == 'ID'
        '16'
      elsif state_char == 'IL'
        '17'
      elsif state_char == 'IN'
        '18'
      elsif state_char == 'IA'
        '19'
      else
        ' '
      end
    end

    def convert_true_false(true_false)
      if true_false == 'false'
        'N'
      elsif true_false == 'true'
        'Y'
      else
        ' '
      end
    end
  end
end