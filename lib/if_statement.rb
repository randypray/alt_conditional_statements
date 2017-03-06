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

    def convert_state_char_to_number_with_return(state_char)
      return '01' if state_char == 'AL'
      return '02' if state_char == 'AK'
      return '04' if state_char == 'AZ'
      return '05' if state_char == 'AR'
      return '06' if state_char == 'CA'
      return '08' if state_char == 'CO'
      return '09' if state_char == 'CT'
      return '10' if state_char == 'DE'
      return '11' if state_char == 'DC'
      return '12' if state_char == 'FL'
      return '13' if state_char == 'GA'
      return '15' if state_char == 'HI'
      return '16' if state_char == 'ID'
      return '17' if state_char == 'IL'
      return '18' if state_char == 'IN'
      return '19' if state_char == 'IA'
      ' '
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