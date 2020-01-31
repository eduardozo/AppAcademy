def all_words_capitalized?(array)
  array.all? { |ele| ele == ele.capitalize }
end

def no_valid_url?(array)
  url_end = ['.com', '.net', '.io', '.org']

  array.none? { |url| url_end.include?(url.slice(-4..-1)) }
end

def any_passing_students?(students)
  students.any? { |student| student[:grades].sum / student[:grades].size > 75 }
end