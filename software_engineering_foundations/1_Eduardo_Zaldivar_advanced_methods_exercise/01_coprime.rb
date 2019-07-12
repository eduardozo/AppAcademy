# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
  return false if num1 < 2 || num2 < 2

  # & Returns a new array containing elements common to the two arrays, with no duplicates
  similar_elements = factors_of(num1) & factors_of(num2)
  if similar_elements.length == 1 && similar_elements.include?(1)
    true
  else
    false
  end

end

# Returns a factor array given a number
def factors_of(num)
  factor_arr = []

  (1...num).reverse_each do |factor|
    if (num % factor).zero?
      factor_arr << factor
    end
  end

  factor_arr
end

p coprime?(25, 12) # => true
p coprime?(7, 11) # => true
p coprime?(30, 9) # => false
p coprime?(6, 24) # => false
