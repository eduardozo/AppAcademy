class Hangman
  DICTIONARY = ['cat', 'dog', 'bootcamp', 'pizza']

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, '_')
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    @secret_word.chars.each_index.select { |i| @secret_word[i] == char }
  end

  def fill_indices(char, indices)
    indices.each { |i| @guess_word[i] = char }
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts 'that has already been attempted'
      return false
    end

    @attempted_chars << char
    matches_found = get_matching_indices(char)
    fill_indices(char, matches_found)

    @remaining_incorrect_guesses -= 1 if matches_found.empty?

    true
  end

  def ask_user_for_guess
    puts 'Enter a char: '
    char = gets.chomp

    try_guess(char)
  end

  def win?
    if @guess_word.join == @secret_word
      puts('WIN')
      return true
    end

    false
  end

  def lose?
    if @remaining_incorrect_guesses.zero?
      puts 'LOSE'
      return true
    end

    false
  end



end
