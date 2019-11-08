def partition(array, num)
  new_array = Array.new(2) { [] }

  array.each do |value|
    if value < num
      new_array[0] << value
    else
      new_array[1] << value
    end
  end

  new_array
end

def merge(hash_1, hash_2)
  new_hash = Hash.new(0)

  hash_1.each { |key, value| new_hash[key] = value }
  hash_2.each { |key, value| new_hash[key] = value }

  new_hash
end

def censor(sentence, array)
  vowels = 'aeiou'
  sentence_arr = sentence.split

  sentence_arr.each do |world|
    array.each do |censor|
      if world.downcase == censor
        censor.each_char.with_index { |char, i| vowels.include?(char) ? world[i] = '*' : 0 }
      end
    end
  end
  sentence_arr.join(' ')
end

