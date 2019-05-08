# Is Valid Name
# Write a method is_valid_name that takes in a string
# and returns a boolean indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  if !str.include?(" ")
    return false
  end

  new_str = str.split
  if new_str.count < 1
    return false
  end

  new_str.each do |name|
    return is_capitalized(name)
  end

  return false
end

def is_capitalized(name)
  return (name[0] == name[0].upcase) && (name[1..-1] == name[1..-1].downcase)
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false