# Caesar Cipher
# Write a method caesar_cipher that takes in a string and a number.
# The method should return a new string
# where every character of the original is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  cipher = ''

  (0...str.length).each do |i|
    char = str[i]
    index = alphabet.index(char) + num
    cipher += alphabet[index % 26]
  end
  return cipher
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"