def hipsterfy(string)
  (0...string.length).reverse_each do |index|
    char = string[index]
    if 'aeiou'.include?(char)
      string[index] = ''
      break
    end
  end
  string
end

def vowel_counts(string)
  hash = Hash.new(0)
  string.downcase.chars { |char| 'aeiou'.include?(char) ? hash[char] += 1 : 0 }
  hash
end

def caesar_cipher(string, num)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  cipher = ''

  (0...string.length).each do |i|
    char = string[i]
    if alphabet.include?(char)
      index = alphabet.index(char) + num
      cipher += alphabet[index % 26]
    else
      cipher += char
    end
  end
  cipher
end