module Logging
  module ClassMethods
    def logging_enabled?
      true
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  def log(level, message)
    File.open("log.txt", "w") do |f|
      f.write "#{level}: #{message}"
    end
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

puts Service.ancestors
puts Service.logging_enabled?
Service.new.do_something
