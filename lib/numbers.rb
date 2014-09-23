require "pry"

class Numbers

  # attr_reader :number
  # attr_writer :number

  # attr_accessor :number

  # def number
  #   @number
  # end

  # def number=(number)
  #   @number = number
  # end

  def factorial(number)
    raise TypeError unless number.class == Fixnum
    raise TypeError if number < 0
    return 1 if number == 0
    (1..number).to_a.reduce(:*)
  end

  def sum_of_digits(num)
    raise TypeError unless num.class == Fixnum
    raise TypeError if num < 0
    num.to_s.split("").collect{|s| s.to_i}.reduce(:+)
  end

  def factorial_sum_digits(num)
    sum_of_digits(factorial(num))
  end

  def valid_input_number?
    number.class == Fixnum
  end

  def warn_invalid_input
    puts "Input was not valid" unless valid_input_number?
  end

end



# class Person
#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name = last_name
#   end

#   def full_name
#     "#{@first_name} #{@last_name}"
#   end
# end

# josh = Person.new("Josh", "C")
# josh.full_name
# #same thing as dot notation above
# josh.send(:full_name)

# class Dog
#   def speak(n)
#     "woof" * n
#   end
# end

# fido = Dog.new
# fido.speak(3)
