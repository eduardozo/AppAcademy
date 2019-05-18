# Pig Latin Word
# Write a method pig_latin_word that takes in a word string
# and translates the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  pigLatin = ""
  str1 = ""
  str2 = ""

  if is_vowel(word[0])
    pigLatin = word + "yay"
    return pigLatin
  end

  word.each_char.with_index do |char, i|
    if is_vowel(char)
      return word[i..-1] + word[0...i] + "ay"
    end
  end
end

def is_vowel(str)
  return (str == "a" || str == "e" || str == "i" || str == "o" || str == "u")
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"