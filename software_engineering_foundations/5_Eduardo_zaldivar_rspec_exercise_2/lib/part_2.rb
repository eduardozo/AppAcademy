def palindrome?(string)
  return string == reverse(string)
end

def reverse(word)
  i = word.length - 1
  w_reverse = ''
  while i >= 0
    w_reverse += word[i]
    i -= 1
  end

  w_reverse
end

