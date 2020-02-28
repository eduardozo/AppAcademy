def reverser(string, &proc)
  string.reverse!
  proc.call(string)
end

def word_changer(string, &proc)
  new_str = string.split.map { |word| proc.call(word) }

  new_str.join(' ')
end

