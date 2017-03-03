require_relative 'spec_helper'

describe 'Using HashConvert do what an if statement does' do

  let(:case_statement) { Conversions::CaseStatement.new }

  describe '.convert_state_char_to_number' do
    it 'Converts IA to 19  ' do
      state = case_statement.convert_state_char_to_number('IA')
      puts "state = #{state}"
      expect(state).to eq '19'
    end

    it 'Defaults to space when not found' do
      state = case_statement.convert_state_char_to_number('MI')
      puts "state = #{state}"
      expect(state).to eq ' '
    end
  end

  describe '.convert_true_false' do
    it 'Converts true to Y' do
      bool = case_statement.convert_true_false('true')
      puts "bool = #{bool}"
      expect(bool).to eq 'Y'
    end

    it 'Defaults to space when not true or false' do
      bool = case_statement.convert_true_false('DontKnow')
      puts "bool = #{bool}"
      expect(bool).to eq ' '
    end
  end
end