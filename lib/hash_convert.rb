module Conversions
  class HashConvert

    def convert_state_char_to_number(state_char)
      state_to_char = Hash.new(' ')
      state_to_char['AL'] = '01'
      state_to_char['AK'] = '02'
      state_to_char['AZ'] = '04'
      state_to_char['AR'] = '05'
      state_to_char['CA'] = '06'
      state_to_char['CO'] = '08'
      state_to_char['CT'] = '09'
      state_to_char['DE'] = '10'
      state_to_char['DC'] = '11'
      state_to_char['FL'] = '12'
      state_to_char['GA'] = '13'
      state_to_char['HI'] = '15'
      state_to_char['ID'] = '16'
      state_to_char['IL'] = '17'
      state_to_char['IN'] = '18'
      state_to_char['IA'] = '19'
      state_to_char[state_char]
    end

    def convert_state_char_to_number_with_yml(state_char)
      state_to_char = Hash.new(' ')
      state_to_number_conversion = read_yml_file('data/state_to_number_conversion.yml')
      state_to_number_conversion.each { |state, number| state_to_char[state] = number }
      state_to_char[state_char]
    end

    def convert_state_char_to_number_with_yml_no_default(state_char)
      state_to_number_conversion = read_yml_file('data/state_to_number_conversion.yml')
      state_to_number_conversion[state_char]
    end

    def convert_true_false(true_false)
      true_to_false = Hash.new(' ')
      true_to_false['true'] = 'Y'
      true_to_false['false'] = 'N'
      true_to_false[true_false]
    end
  end
end