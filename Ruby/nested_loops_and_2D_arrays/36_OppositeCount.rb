# Opposite Count
# Write a method opposite_count that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
  count = 0
  nums.each_with_index do |first, index1|
    nums.each_with_index do |second, index2|
      if (first + second == 0) && index2 > index1
        count += 1
      end
    end
  end

  return count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
