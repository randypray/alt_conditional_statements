require_relative 'spec_helper'

describe 'Using HashConvert do what an if statement does' do

  let(:if_statement) { Conversions::IfStatement.new }

  describe '.convert_state_char_to_number' do
    it 'Converts IA to 19  ' do
      state = if_statement.convert_state_char_to_number('IA')
      puts "state = #{state}"
      expect(state).to eq '19'
    end

    it 'Defaults to space when not found' do
      state = if_statement.convert_state_char_to_number('MI')
      puts "state = #{state}"
      expect(state).to eq ' '
    end
  end

  describe '.convert_state_char_to_number_with_return' do
    it 'Converts IA to 19  ' do
      state = if_statement.convert_state_char_to_number_with_return('IA')
      puts "state = #{state}"
      expect(state).to eq '19'
    end

    it 'Defaults to space when not found' do
      state = if_statement.convert_state_char_to_number_with_return('MI')
      puts "state = #{state}"
      expect(state).to eq ' '
    end
  end

  describe '.convert_true_false' do
    it 'Converts true to Y' do
      bool = if_statement.convert_true_false('true')
      puts "bool = #{bool}"
      expect(bool).to eq 'Y'
    end

    it 'Converts false to N' do
      bool = if_statement.convert_true_false('false')
      puts "bool = #{bool}"
      expect(bool).to eq 'N'
    end

    it 'Defaults to space when not true or false' do
      bool = if_statement.convert_true_false('DontKnow')
      puts "bool = #{bool}"
      expect(bool).to eq ' '
    end
  end
end