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

def my_count(array, &proc)
  count = 0

  array.each { |ele| count += 1 if proc.call(ele) }

  count
end

def my_any?(array, &proc)
  any = false

  array.each { |ele| any = true if proc.call(ele) }

  any
end

def my_all?(array, &proc)
  all = true

  array.each { |ele| all = false if !proc.call(ele) }

  all
end

def my_none?(array, &proc)
  none = true

  array.each { |ele| none = false if proc.call(ele) }

  none
end
