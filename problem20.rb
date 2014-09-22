require "pry"
require_relative "lib/numbers"

n = Numbers.new(100)

puts n.sum_of_digits(n.factorial)

binding.pry
