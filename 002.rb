require 'pry'

############# Project Eulers problem #############
def fib
  sum = 0
  a = 1
  b = 2
  while b < 4000000
    sum += b if b % 2 == 0
    a, b = b, a + b
    # sum += b if b % 2 == 0
  end
  puts sum
end

############ Fibonacci with users input ############
def fib(num)
  sequence = [1,2]
  if num < 2
    num
  else
    0.upto(num) do
      sequence << sequence[-1] + sequence[-2]
    end
  end
  sequence
end



