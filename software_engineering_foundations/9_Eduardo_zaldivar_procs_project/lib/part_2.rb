def reverser(string, &proc)
  string.reverse!
  proc.call(string)
end

def word_changer(string, &proc)
  new_str = string.split.map { |word| proc.call(word) }

  new_str.join(' ')
end

def greater_proc_value(num, proc_1, proc_2)
  result_one = proc_1.call(num)
  result_two = proc_2.call(num)

  result_one > result_two ? result_one : result_two
end

def and_selector(array, proc_1, proc_2)
  new_array = []

  array.each { |ele| new_array << ele if proc_1.call(ele) && proc_2.call(ele) }


  new_array
end

def alternating_mapper(array, proc_1, proc_2)
  new_array = []

  array.each_with_index do |ele, index|
    new_array << proc_1.call(ele) if index.even?
    new_array << proc_2.call(ele) if index.odd?
  end

  new_array
end