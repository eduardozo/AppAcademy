def my_map(array, &proc)
  new_array = []

  array.each { |value| new_array << proc.call(value) }

  new_array
end

