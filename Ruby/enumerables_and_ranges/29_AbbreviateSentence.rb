# Abbreviate Sentence
# Write a method abbreviate_sentence that takes in a sentence string
# and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
  abbreviated = ""
  sent.split.each do |word|
    if word.length > 4
      abbreviated += remove_vowels(word)
    else
      abbreviated += word
    end
    abbreviated += " "
  end

  return abbreviated
end



puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"