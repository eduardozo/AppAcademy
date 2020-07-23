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



end
