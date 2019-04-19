# Reverse
# Write a method reverse(word) that takes in a string word
# and returns the word with its letters in reverse order.

def reverse(word)
  i = word.length - 1
  w_reverse = ""
  while i >= 0
    w_reverse += word[i]
    i -= 1
  end

  return w_reverse
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"