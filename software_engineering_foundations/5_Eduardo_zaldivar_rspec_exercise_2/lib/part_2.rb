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

def substrings(str)
  substr = []

  i = 0
  while i < str.length
    substr << str[i]
    j = 1 + i
    while j < str.length
      substr << str[i..j]
      j += 1
    end
    i += 1
  end

  substr
end

