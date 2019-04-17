# Either Only
# Write a method either_only(number) that takes in a number
# and returns true if the number is divisible by either 3 or 5, but not both.
# The method should return false otherwise.

def either_only(number)
  is_div_3 = number % 3 == 0
  is_div_5 = number % 5 == 0
  return ((is_div_3 || is_div_5) && !(is_div_3 && is_div_5)) ? true : false
end

puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false