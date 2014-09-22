require "pry"


s_array = []

f = File.open("problem13.txt")

f.each_line {|line| s_array.push line}

i_array = s_array.collect{|s| s.to_i}

total = i_array.reduce(:+)

first_ten_digits = total.to_s[0...10]

puts first_ten_digits
