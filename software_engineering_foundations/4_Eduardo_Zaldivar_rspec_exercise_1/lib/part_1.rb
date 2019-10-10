def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(array)
  array.sum / array.length.to_f
end

def repeat(string, num)
  string * num
end

def yell(string)
  string.upcase << '!'
end

def alternating_case(string)
  arr = string.downcase.split

  i = 0
  while i < arr.length
    arr[i].upcase!
    i += 2
  end
  arr.join(' ')
end