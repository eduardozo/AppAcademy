# Most Vowels
# Write a method most_vowels that takes in a sentence string
# and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  #sentence.split.each_with_index { |word, i| word.count('aeiou') }.max

  sentence_array = sentence.split
  counter = []

  sentence_array.each_with_index { |word, i| counter[i] = word.count('aeiou') }
  more_vowels = counter.max
  index = counter.index(more_vowels)

  return sentence_array[index]
end

print most_vowels("what a wonderful life") #=> "wonderful"