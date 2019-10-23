def hipsterfy(string)
  (0...string.length).reverse_each do |index|
    char = string[index]
    if 'aeiou'.include?(char)
      string[index] = ''
      break
    end
  end
  string
end
