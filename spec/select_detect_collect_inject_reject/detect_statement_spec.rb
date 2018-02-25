require_relative 'spec_helper'

describe 'Detects from an array' do

  let(:number_rows) { ['1', '2', '3', '4', '1'] }

  it 'Detects number 1' do
    found_row = number_rows.detect { |row| row == '2' }
    puts "found_row = #{found_row}"
    expect(found_row).to eq '2'
  end

  it 'Detects 1 number in array' do
    found_row = number_rows.detect { |row| row == '1' }
    puts "found_row = #{found_row}"
    expect(found_row).to eq '1'
  end

  it 'Found rows is 2' do
    found_row = number_rows.detect { |row| row == '1' }
    puts "found_row class = #{found_row.class}"
    expect(found_row.class).to eq String
  end
end

describe 'Detects from an array_hash' do

  let(:crew) { [{name: 'Tuvok', title: 'Security Officer'},
                {name: 'Docter', title: 'Chief Medical Officer'},
                {name: 'Chakotay', title: 'First Officer'},
                {name: "B'Elanna Torres", title: 'Chief Engineer'},
                {name: 'Tom Paris', title: 'Conn Officer'},
                {name: 'Kes', title: 'Nurse'},
                {name: 'Seven of Nine', title: 'Stellar Cartography'},
                {name: 'Harry Kim', title: 'Operational Officer'}] }

  it 'Detects Tuvok from the crew' do
    found_row = crew.detect { |row| row[:name] == 'Tuvok' }
    puts "found_row = #{found_row}"
    expect(found_row[:name]).to eq 'Tuvok'
  end

  it 'Detects one officer in the crew' do
    found_row = crew.detect { |row| row[:title] =~ /Officer/ }
    puts "found_row = #{found_row}"
    expect(found_row[:title]).to include 'Officer'
  end

  it 'There are 2 fields in the hash' do
    found_row = crew.detect { |row| row[:title] =~ /Officer/ }
    puts "found_row count = #{found_row.count}"
    expect(found_row.count).to eq 2
  end

  it 'Detects one chief in the crew' do
    found_row = crew.detect { |row| row[:title] =~ /Chief/ }
    puts "found_row = #{found_row}"
    expect(found_row[:title]).to include 'Chief'
  end

  it 'There are 2 fields in the hash' do
    found_row = crew.detect { |row| row[:title] =~ /Chief/ }
    puts "found_row count = #{found_row.count}"
    expect(found_row.count).to eq 2
  end
end