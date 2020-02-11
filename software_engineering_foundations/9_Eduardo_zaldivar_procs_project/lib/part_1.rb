def my_map(array, &proc)
  new_array = []

  array.each { |value| new_array << proc.call(value) }

  new_array
end

def my_select(array, &proc)
  new_array = []

  array.each { |ele| new_array << ele if proc.call(ele) }

  new_array
end

