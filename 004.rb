# A palindromic number reads the same both ways. The largest
# palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrom?(number)
  reverse = number.to_s.split(//).reverse.join
  number.to_s == reverse
end

def largest_palindrom
  array = []
  (100..999).each do |num1|
    (num1..1000).each do |num2|
      product = num1 * num2
      if palindrom?(product)
        array << product
      end
    end
  end
  array.max
end

