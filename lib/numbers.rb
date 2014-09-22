require "pry"

class Numbers

  # attr_reader :number
  # attr_writer :number

  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def factorial
    return 1 if number == 0
    factorial_array = (1..number).to_a
    factorial_array.reduce(:*)
  end

  def sum_of_digits(num)
    digit_array =  num.to_s.split("")
    digit_array = digit_array.collect{|s| s.to_i}
    digit_array = digit_array.reduce(:+)
  end

  def valid_input_number?
    number.class == Fixnum
  end

  def warn_invalid_input
    puts "Input was not valid" unless valid_input_number?
  end
end


#Where do you put error handling??
    # unless number.class == Fixnum && number > 0
    #   @number = nil
    #   warn_invalid_input
    # end


binding.pry
