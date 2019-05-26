# Ae Count
# Write a method ae_count that takes in a string
# and returns a hash containing the number of a's and e's in the string.
# Assume the string contains only lowercase characters.

def ae_count(str)
  hash = Hash.new(0)

  str.each_char do |char|
    if char == "a" || char == "e"
      hash[char] += 1
    end
  end

  return hash.sort_by { |k, v| k}.to_h
end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}