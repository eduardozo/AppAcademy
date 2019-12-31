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

