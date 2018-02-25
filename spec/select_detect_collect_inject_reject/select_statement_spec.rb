require_relative 'spec_helper'

describe 'Selects from an array' do

  let(:number_rows) { ['1', '2', '3', '4', '1'] }

  it 'Selects number 1' do
    found_rows = number_rows.select { |row| row == '2' }
    puts "found_rows = #{found_rows}"
    expect(found_rows[0]).to eq '2'
  end

  it 'Selects 2 numbers in array' do
    found_rows = number_rows.select { |row| row == '1' }
    puts "found_rows = #{found_rows}"
    expect(found_rows[0]).to eq '1'
    expect(found_rows[1]).to eq '1'
  end

  it 'Found rows is 2' do
    found_rows = number_rows.select { |row| row == '1' }
    puts "found_rows count = #{found_rows.count}"
    expect(found_rows.count).to eq 2
  end
end