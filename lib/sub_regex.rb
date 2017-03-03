module Conversions
  class SubRegex

    def convert_state_char_to_number(state_char)
      state_regex = /AL|AK|AZ|AR|CA|CO|CT|DE|DC|FL|GA|HI|ID|IL|IN|IA/
      state_hash = {'AL' => '01', 'AK' => '02', 'AZ' => '04', 'AR' => '05', 'CA' => '06',
                    'CO' => '08', 'CT' => '09', 'DE' => '10', 'DC' => '11', 'FL' => '12',
                    'GA' => '13', 'HI' => '15', 'ID' => '16', 'IL' => '17', 'IN' => '18', 'IA' => '19'}
      state_char.sub(state_regex, state_hash)
    end

    def convert_state_char_to_number_with_yml(state_char)
      state_regex = /AL|AK|AZ|AR|CA|CO|CT|DE|DC|FL|GA|HI|ID|IL|IN|IA/
      state_hash = read_yml_file('data/state_to_number_conversion.yml')
      state_char.sub(state_regex, state_hash)
    end

    def convert_true_false(true_false)
      true_false.sub(/true|false/, {'false' => 'N', 'true' => 'Y'})
    end
  end
end