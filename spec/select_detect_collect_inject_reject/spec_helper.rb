require 'rspec'
require 'pathname'
require 'fileutils'

# # This method returns the root project directory
def root_path
  path = File.join(File.dirname(__FILE__), '../../')
  Pathname.new(path).realpath
end

file_name = Dir["#{root_path}/lib/**/*.rb"]
file_name.each { |f| require_relative f }

RSpec.configure do |config|
  config.color = true
  config.before(:all) do |x|
    date_time = Time.now.strftime('%Y-%m-%d__%H:%M:%S.%L').to_s
    scenario_name = "#{date_time}__#{x.class.description}"
    puts "\n#{scenario_name}"
  end
end

include DataLayer::YmlIo
