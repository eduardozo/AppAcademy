# Is Valid Email
# Write a method is_valid_email that takes in a string
# and returns a boolean indicating whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  if !str.include?("@")
    return false
  end

  new_str = str.split("@")

  return (new_str[0] == new_str[0].downcase && !new_str[0].match(/\d/)) && (new_str[1].include?("."))
end

def is_valid_email_2(str)
  parts = str.split("@")

  if parts.length != 2
    return false
  end

  first = parts[0]
  second = parts[1]
  alpha = "abcdefghijklmnopqrstuvwxyz"

  first.each_char do |char|
    if !alpha.include?(char)
      return false
    end
  end

  if second.split('.').length == 2
    return true
  else
    return false
  end
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false