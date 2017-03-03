require_relative 'spec_helper'

describe 'Using SubRegex do what an if statement does' do

  let(:sub_regex) { Conversions::SubRegex.new }

  describe '.convert_state_char_to_number' do
    it 'Converts IA to 19 ' do
      state = sub_regex.convert_state_char_to_number('IA')
      puts "state = #{state}"
      expect(state).to eq '19'
    end

    it 'Defaults to what was passed when not found' do
      state = sub_regex.convert_state_char_to_number('MI')
      puts "state = #{state}"
      expect(state).to eq 'MI'
    end
  end

  describe '.convert_state_char_to_number_with_yml' do
    it 'Converts IA to 19 ' do
      state = sub_regex.convert_state_char_to_number_with_yml('IA')
      puts "state = #{state}"
      expect(state).to eq '19'
    end

    it 'Defaults to what was passed when not found' do
      state = sub_regex.convert_state_char_to_number_with_yml('MI')
      puts "state = #{state}"
      expect(state).to eq 'MI'
    end
  end

  describe '.convert_true_false' do
    it 'Converts true to Y' do
      bool = sub_regex.convert_true_false('true')
      puts "bool = #{bool}"
      expect(bool).to eq 'Y'
    end

    it 'Defaults to what was passed when not true or false' do
      bool = sub_regex.convert_true_false('DontKnow')
      puts "bool = #{bool}"
      expect(bool).to eq ' '
    end
  end
end