# If we list all the natural numbers below 10 that are multiples
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

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

