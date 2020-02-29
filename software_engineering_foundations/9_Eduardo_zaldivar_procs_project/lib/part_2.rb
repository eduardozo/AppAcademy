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

