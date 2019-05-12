# Combinations
# Write a method combinations that takes in an array of unique elements,
# the method should return a 2D array representing all possible
# combinations of 2 elements of the array.

def combinations(arr)
  combinations = []
  arr.each_with_index do |first, index1|
    arr.each_with_index do |second, index2|
      if index2 > index1
        combinations << [first, second]
      end
    end
  end

  return combinations
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts