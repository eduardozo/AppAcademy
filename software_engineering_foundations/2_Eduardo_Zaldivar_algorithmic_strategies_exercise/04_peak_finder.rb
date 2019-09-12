# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(arr)
  return arr if arr.length < 2

  new_arr = []
  middle_peak = arr.length / 2

  if arr.first > arr[1]
    new_arr << arr.first
  end

  if arr.length > 2
    if arr[middle_peak] > arr[middle_peak - 1] && arr[middle_peak] > arr[middle_peak + 1]
      new_arr << arr[middle_peak]
    end
  end

  if arr.last > arr[-2]
    new_arr << arr.last
  end

  new_arr
end

p peak_finder([1, 3, 5, 4]) # => [5]
p peak_finder([4, 2, 3, 6, 10]) # => [4, 10]
p peak_finder([4, 2, 11, 6, 10]) # => [4, 11, 10]
p peak_finder([1, 3]) # => [3]
p peak_finder([3, 1]) # => [3]
