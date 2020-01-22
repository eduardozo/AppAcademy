def select_even_nums(array)
  array.select(&:even?)
end

def reject_puppies(dogs)
  dogs.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(array)
  array.count { |subarray| subarray.sum.positive? }
end

def aba_translate(string)
  vowels = 'aeiou'
  translation = ''

  string.chars { |char| translation += vowels.include?(char) ? "#{char}b#{char}" : char }

  translation
end

def aba_array(array)
  array.map { |word| aba_translate(word) }
end