require_relative 'spec_helper'

describe 'Using HashConvert do what an if statement does' do

  let(:hash_convert) { Conversions::HashConvert.new }

  describe '.convert_state_char_to_number' do
    it 'Converts IA to 19  ' do
      state = hash_convert.convert_state_char_to_number('IA')
      puts "state = #{state}"
      expect(state).to eq '19'
    end

    it 'Defaults to space when not found' do
      state = hash_convert.convert_state_char_to_number('MI')
      puts "state = #{state}"
      expect(state).to eq ' '
    end
  end

  describe '.convert_state_char_to_number_with_yml' do
    it 'Converts IA to 19 ' do
      state = hash_convert.convert_state_char_to_number_with_yml('IA')
      puts "state = #{state}"
      expect(state).to eq '19'
    end

    it 'Defaults to space when not found' do
      state = hash_convert.convert_state_char_to_number_with_yml('MI')
      puts "state = #{state}"
      expect(state).to eq ' '
    end
  end

  describe '.convert_true_false' do
    it 'Converts true to Y' do
      bool = hash_convert.convert_true_false('true')
      puts "bool = #{bool}"
      expect(bool).to eq 'Y'
    end

    it 'Defaults when not true or false' do
      bool = hash_convert.convert_true_false('DontKnow')
      puts "bool = #{bool}"
      expect(bool).to eq 'DontKnow'
    end
  end
end