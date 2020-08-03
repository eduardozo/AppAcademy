# frozen_string_literal: true

class Code
  attr_reader :pegs

  POSSIBLE_PEGS = {
      'R' => :red,
      'G' => :green,
      'B' => :blue,
      'Y' => :yellow
  }.freeze

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.keys.include?(char.upcase) }
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(pegs)
    Code.new(pegs.chars)
  end

  def initialize(pegs)
    @pegs = peg_list(pegs)
  end

  def peg_list(pegs)
    raise 'invalid pegs' unless Code.valid_pegs?(pegs)

    pegs.map(&:upcase)
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess_code)
    count = 0
    @pegs.each_with_index { |peg, index| count += 1 if peg == guess_code[index] }
    count
  end

  def num_near_matches(guess_code)
    count = 0
    guess_code.pegs.each_with_index do |peg, index|
      matches_pegs = @pegs.include?(peg)
      different_index = peg != @pegs[index]

      count += 1 if different_index && matches_pegs
    end

    count
  end



end
