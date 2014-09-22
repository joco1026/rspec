require "pry"

array = []

# def three_five(number, array)
#   if number % 3 == 0 || number % 5 == 0
#     array << number
#   end
# end

def is_divisible_by_three_or_five?(number)
  number % 3 == 0 || number % 5 == 0
end

not_divisible = []

(1...1000).each do |limit|
  array << limit if is_divisible_by_three_or_five?(limit)
  not_divisible << limit unless is_divisible_by_three_or_five?(limit)
end

total = array.reduce(:+)

puts total

binding.pry
