# Fibonacci
# The fibonacci sequence is a sequence of numbers whose first and second elements are 1.
# To generate further elements of the sequence we take the sum of the previous two elements.
# For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8.
# Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length.

def fibonacci(length)
  fiby = []
  return fiby if length == 0
  return fiby << 1 if length == 1

  (1..length).each { |n| fiby << fiby_fn(n) }

  return fiby
end

def fiby_fn(n)
  return n if (0..1).include? n
  (fiby_fn(n - 1) + fiby_fn(n - 2))
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts