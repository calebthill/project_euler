require 'pry'

def multiples_of_3_and_5
  numbers = 1...1000
  divisible = []
  numbers.each do |num|
    if num % 3 == 0 || num % 5 == 0
      divisible << num
    end
  end
  divisible.inject { |sum, num| sum + num }
end

puts multiples_of_3_and_5

