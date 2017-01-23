class System
  attr_reader :bodies


  def initialize (name)
  @bodies = []
  @name = name
  end


  def add (body)
    @bodies << body
  end

  def total_mass
    mass = 0
    @bodies.each do |body|
      mass = mass + body.mass
    end
    puts "The total mass is #{mass}"
  end
end




class Body

attr_accessor :name, :mass

  def initialize (name, mass)
  @name = name
  @mass = mass
  end
end


class Planet < Body

  attr_accessor :day, :year

  def initialize (name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end
end

class Stars < Body
  attr_accessor :type

  def initialize (name, mass, type)
    super(name, mass)
    @type = type
  end
end

class Moon < Body

  attr_accessor :month, :planet

  def initialize (name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end


#sun sun = Stars.new("Sun", 100, "og")
#earth home = Planet.new("earth", 150, 3, 1994)
#earth's moon revolver = Moon.new("white", 50, 3, "earth")
