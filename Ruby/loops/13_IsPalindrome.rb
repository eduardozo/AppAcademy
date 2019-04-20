# Is Palindrome
# Write a method is_palindrome(word) that takes in a string word
# and returns the true if the word is a palindrome, false otherwise.
# A palindrome is a word that is spelled the same forwards and backwards.

def is_palindrome(word)
  return word == reverse(word)
end

def reverse(word)
  i = word.length - 1
  w_reverse = ""
  while i >= 0
    w_reverse += word[i]
    i -= 1
  end

  return w_reverse
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false