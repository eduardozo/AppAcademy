# Prime Factors
# Write a method prime_factors that takes in a number
# and returns an array containing all of the prime factors of the given number.

def prime_factors(number)
  divisors = []
  divisor = 2

  while number > 1
    if number % divisor == 0
      number /= divisor
      divisors << divisor
    else
      divisor += 1
    end
  end

  divisors.uniq
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts