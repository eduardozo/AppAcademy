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

  def ask_user_for_guess
    puts 'Enter a code: '
    input = gets.chomp

    input_code = Code.from_string(input)
    print_matches(input_code)

    input_code == @secret_code
  end

end
