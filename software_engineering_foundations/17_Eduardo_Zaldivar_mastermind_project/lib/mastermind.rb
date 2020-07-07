require_relative 'code'

class Mastermind

  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(code)
    matches = @secret_code.num_exact_matches(code)
    near_matches = @secret_code.num_near_matches(code)

    puts "Number of exact matches: #{matches}"
    puts "Number of near matches: #{near_matches}"
  end



end
