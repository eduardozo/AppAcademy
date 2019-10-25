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
