# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
  divisors = []
  divisor = 2

  while num > 1
    if num % divisor == 0
      num /= divisor
      divisors << divisor
    else
      divisor += 1
    end
  end

  divisors.max
end

def unique_chars?(str)
  chars_hash = Hash.new(0)
  str.chars { |char| chars_hash[char] += 1 }
  chars_hash.values.all? { |count| count == 1 }
end

def dupe_indices(arr)
  dupe_hash = Hash.new(Array.new(0))
  arr.each_with_index { |key, i| arr.count(key) > 1 ? dupe_hash[key] += [i] : 0 }

  dupe_hash
end

