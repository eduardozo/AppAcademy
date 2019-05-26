# Frequent Letters
# Write a method frequent_letters that takes in a string
# and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  hash = Hash.new(0)
  string.each_char { |char| hash[char] += 1 }

  frequent = []
  hash.each_key do |k|
    if hash[k] > 2
      frequent << k
    end
  end
  return frequent
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts