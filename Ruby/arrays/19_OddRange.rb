# Odd Range
# Write a method odd_range(min, max) that takes in two numbers min and max.
# The method should return an array containing all odd numbers from min to max (inclusive).

def odd_range(min, max)
  new_array = []
  i = min

  while i <= max
    if i % 2 != 0
      new_array << i
    end
    i += 1
  end

  return new_array
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]