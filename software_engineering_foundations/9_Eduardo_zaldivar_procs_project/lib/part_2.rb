def reverser(string, &proc)
  string.reverse!
  proc.call(string)
end

