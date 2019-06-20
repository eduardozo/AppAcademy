# Same Char Collapse
# Write a method same_char_collapse that takes in a string
# and returns a collapsed version of the string.
# To collapse the string, we repeatedly delete 2 adjacent characters
# that are the same until there are no such adjacent characters.
# If there are multiple pairs that can be collapsed, delete the leftmost pair.
# For example, we take the following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(str)
  return str if str.length <= 2
  new_str = ''
  i = 0

  while i < str.length
    if str[i] == str[i + 1]
      i += 2
    else
      new_str += str[i]
      i += 1
    end
  end

  return same_char_collapse(new_str)
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv