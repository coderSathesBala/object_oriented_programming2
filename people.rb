  class Person

    attr_accessor :first_name, :last_name

    def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    end

    def greetings
      puts "Hi, my name is #{first_name} #{last_name}."
    end


  end

  class Instructor < Person
      def teach
      puts "Everything in Ruby is an Object"
      end
  end

  class Student < Person
      def learn
        puts "I get it!"
      end
    end

    #Unfortunately the teach method won't work on Student because in this code I don't have  a method for the student to teach
    #So ruby has no idea what to do!
