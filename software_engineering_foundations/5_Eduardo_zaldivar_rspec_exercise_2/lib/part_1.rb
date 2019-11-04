def partition(array, num)
  new_array = Array.new(2) { [] }

  array.each do |value|
    if value < num
      new_array[0] << value
    else
      new_array[1] << value
    end
  end

  new_array
end

