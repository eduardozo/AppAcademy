# Double Letter Count
# Write a method that takes in a string
# and returns the number of times that the same letter repeats twice in a row.

def double_letter_count(string)
  counter = 0
  string.split.each do |word|
    word.chars.each_with_index do |char, index|
      if char == word[index + 1]
        counter += 1
      end
    end
  end
  return counter
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1