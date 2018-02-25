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

  it 'Found rows is array' do
    found_rows = number_rows.select { |row| row == '1' }
    puts "found_rows.class = #{Array}"
    expect(found_rows.class).to eq Array
  end
end

describe 'Selects from an array_hash' do

  let(:crew) { [{name: 'Tuvok', title: 'Security Officer'},
                {name: 'Doctor', title: 'Chief Medical Officer'},
                {name: 'Chakotay', title: 'First Officer'},
                {name: "B'Elanna Torres", title: 'Chief Engineer'},
                {name: 'Tom Paris', title: 'Conn Officer'},
                {name: 'Kes', title: 'Nurse'},
                {name: 'Seven of Nine', title: 'Stellar Cartography'},
                {name: 'Harry Kim', title: 'Operational Officer'}] }

  it 'Selects Tuvok from the crew' do
    found_rows = crew.select { |row| row[:name] == 'Tuvok' }
    puts "found_rows = #{found_rows}"
    expect(found_rows[0][:name]).to eq 'Tuvok'
  end

  it 'Selects all officers in the crew' do
    found_rows = crew.select { |row| row[:title] =~ /Officer/ }
    puts "found_rows = #{found_rows}"
    expect(found_rows[0][:title]).to include 'Officer'
  end

  it 'There are 5 officers in the crew' do
    found_rows = crew.select { |row| row[:title] =~ /Officer/ }
    puts "found_rows count = #{found_rows.count}"
    expect(found_rows.count).to eq 5
  end

  it 'Selects all chiefs in the crew' do
    found_rows = crew.select { |row| row[:title] =~ /Chief/ }
    puts "found_rows = #{found_rows}"
    expect(found_rows[0][:title]).to include 'Chief'
  end

  it 'There are 2 chiefs in the crew' do
    found_rows = crew.select { |row| row[:title] =~ /Chief/ }
    puts "found_rows count = #{found_rows.count}"
    expect(found_rows.count).to eq 2
  end
end