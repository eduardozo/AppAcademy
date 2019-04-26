# Reverse Range
# Write a method reverse_range(min, max) that takes in two numbers min and max.
# The function should return an array containing all numbers from min to max
# in reverse order. The min and max should be excluded from the array.

def reverse_range(min, max)
  new_array = []
  i = max - 1

  while i > min
    new_array << i
    i -= 1
  end

  return new_array
end