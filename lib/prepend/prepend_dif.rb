class Car
  def go!
    puts "Screech!"
  end
end

test1 = Car.new

test1.go!

module Drivable
  def go!
    super
    "Screech!"
  end
end

class Car
  prepend Drivable

  def go!
    puts "Screech!"
  end
end

test2 = Car.new

test2.go!


