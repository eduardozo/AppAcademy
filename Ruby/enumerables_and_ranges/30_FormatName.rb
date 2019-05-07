# Format Name
# Write a method format_name that takes in a name string and returns the name properly capitalized.

def format_name(str)
  new_str = []
  str.split.each { |word| new_str << word[0].upcase + word[1..-1].downcase }
  return new_str.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
