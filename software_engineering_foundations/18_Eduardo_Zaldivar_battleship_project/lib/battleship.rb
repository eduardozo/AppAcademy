require_relative 'board'
require_relative 'player'

class Battleship
  attr_reader :board, :player

  def initialize(n)
    @player = Player.new
    @board = Board.new(n)
    @remaining_misses = @board.size / 2
  end


  def start_game
    @board.place_random_ships
    puts "Number of ships: #{@board.num_ships}"
    @board.print
  end

  def lose?
    if @remaining_misses <= 0
      p 'you lose'
      true
    else
      false
    end
  end

  def win?
    if @board.num_ships.zero?
      p 'you win'
      true
    else
      false
    end
  end

  def game_over?
    win? || lose?
  end

  def turn
    position = @player.get_move
    successful = @board.attack(position)

    @remaining_misses -= 1 unless successful

    @board.print
    puts "Remaining misses: #{@remaining_misses}"
  end
end
