# Pyramid Sum
# Write a method pyramid_sum that takes in an array of numbers representing the base of a pyramid.
# The function should return a 2D array representing a complete pyramid with the given base.
# To construct a level of the pyramid, we take the sum of adjacent elements of the level below.

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
  return [base] if base.length <= 1
  pyramid = []

  (0...base.length - 1).each do |i|
    pyramid << base[i] + base[i + 1]
    return pyramid_sum(pyramid) << base if i == (base.length - 2)
  end
end

print pyramid_sum([1, 4, 5, 7])
puts

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
