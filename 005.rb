require 'pry'
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder. What is the smallest positive number
# that is evenly divisible by all of the numbers from 1 to 20?

# This one was really tricky for me, had to read up on some blogs and posts
# in order to get my solution.

class Numeric
  def is_divisable?(num)
    self > 0 && num.downto(1).all? { |num| self % num == 0}
  end
end


def smallest_number_div(number)
  if number < 1
    false
  elsif number == 1
    1
  else
    n = 0
    recursive_call = smallest_number_div(number-1)
    until n.is_divisable?(number)
      n += recursive_call
    end
    n
  end
end

puts smallest_number_div(20)

