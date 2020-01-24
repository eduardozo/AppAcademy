def all_words_capitalized?(array)
  array.all? { |ele| ele == ele.capitalize }
end

