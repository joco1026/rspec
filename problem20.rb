require "pry"
require_relative "lib/numbers"

n = Numbers.new

puts n.factorial_sum_digits(100)

binding.pry
