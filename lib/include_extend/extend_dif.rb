module Logging
  def log(level, message)
    File.open("log.txt", "w") do |f|
      f.write "#{level}: #{message}"
    end
  end
end

module ClassMethods
  def logging_enabled?
    true
  end
end

class Service
  include Logging

  def do_something
    begin
      1.sub('', '')
    rescue StandardError => e
      log :error, e.message
    end
  end
end

puts "Service methods 1 #{Service.methods - Object.methods}"
Service.extend(ClassMethods)
puts "Service methods 2 #{Service.methods - Object.methods}"
puts "Service.logging_enabled? #{Service.logging_enabled?}"

puts "\n"
puts Service.ancestors
puts "\n"

service = Service.new

# puts "service.super.methods #{service.super.methods}"
puts "service.respond_to?(:logging_enabled?) #{service.respond_to?(:logging_enabled?)}"
puts "Service.respond_to?(:logging_enabled?) #{Service.respond_to?(:logging_enabled?)}"
puts '-----------------------------------------------------'
puts "Service.methods        #{Service.methods - Object.methods}"
puts "service.methods        #{service.methods - Object.methods}"
puts '-----------------------------------------------------'
service.extend(ClassMethods)
puts "service.respond_to?(:logging_enabled?) #{service.respond_to?(:logging_enabled?)}"
puts "service.methods after  #{service.methods - Object.methods}"
puts "service.class.methods  #{service.class.methods - Object.methods}"
puts "Service.methods        #{Service.methods - Object.methods}"
puts '-----------------------------------------------------'
puts "service.logging_enabled?        #{Service.logging_enabled?}"
puts "service.class.logging_enabled?  #{service.class.logging_enabled?}"
puts "service.logging_enabled?        #{service.logging_enabled?}"
