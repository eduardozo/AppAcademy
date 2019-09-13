# frozen_string_literal: true

# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(_str)
  new_str = ''
  hash = Hash.new(0)

  _str.chars do |char|
    hash[char] += 1
  end

  hash.each do |char, counter|
    new_str += counter > 1 ? counter.to_s + char : char
  end

  new_str
end

p compress_str('aaabbc')        # => "3a2bc"
p compress_str('xxyyyyzz')      # => "2x4y2z"
p compress_str('qqqqq')         # => "5q"
p compress_str('mississippi')   # => "mi2si2si2pi"
