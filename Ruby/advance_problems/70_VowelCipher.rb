# Vowel Cipher
# Write a method vowel_cipher that takes in a string
# and returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
  vowels = 'aeiou'
  cipher = ''

  string.chars do |char|
    if vowels.include?(char)
      index = vowels.index(char)
      new_vowel = vowels[(index + 1) % 5]
      cipher += new_vowel
    else
      cipher += char
    end
  end
  return cipher
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap