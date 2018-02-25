require_relative 'spec_helper'

describe 'Collects from an array' do

  let(:number_rows) { ['1', '2', '3', '4', '1'] }

  it 'Multipies number by 2' do
    found_rows = number_rows.collect { |row| row.to_i * 2 }
    puts "found_rows = #{found_rows}"
    expect(found_rows).to eq [2, 4, 6, 8, 2]
  end

end

describe 'Collect from an array_hash' do

  let(:crew) { [{name: 'Benjamin Sisko', title: 'Commanding Officer'},
                {name: 'Kira Nerys', title: 'First Officer'},
                {name: 'Constable Odo', title: 'Chief of Security'},
                {name: "Quark", title: 'Bar Owner'},
                {name: 'Julian Bashir', title: 'Chief Medical Officer'},
                {name: 'Worf', title: 'Strategic Operations Officer'},
                {name: 'Jadzia Dax', title: 'Chief Science Officer'},
                {name: "Miles O'Brien", title: 'Chief Operations Officer'},
                {name: 'Ezri Dax', title: 'Counselor'},
                {name: 'Jake Sisko', title: 'Student'},
                {name: "Keiko O'Brien", title: 'Teacher'},
                {name: 'Rom', title: 'Maintenance Engineer'},
                {name: 'Nog', title: 'Operations Officer'},
                {name: 'Leeta', title: 'Dabo girl'},
                {name: 'Gowron', title: 'Leader of the Klingon High Council'}] }

  it 'Creates an array with name' do
    found_rows = crew.collect { |row| row[:name] }
    puts "found_rows = #{found_rows}"
    expect(found_rows[0]).to eq 'Benjamin Sisko'
  end

  it 'Creates an array with title' do
    found_rows = crew.collect { |row| row[:title] }
    puts "found_rows = #{found_rows}"
    expect(found_rows[7]).to include 'Chief Operations Officer'
  end

  it 'Creates an array of hashes' do
    found_rows = crew.collect { |row| {:name => row[:name]} }
    puts "found_rows = #{found_rows}"
    expect(found_rows[1][:name]).to eq 'Kira Nerys'
  end

  it 'Counts an array of hashes' do
    found_rows = crew.collect { |row| {:name => row[:name]} }
    puts "found_rows.count = #{found_rows.count}"
    expect(crew.count).to eq found_rows.count
  end
end