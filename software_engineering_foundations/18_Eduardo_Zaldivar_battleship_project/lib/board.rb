class Board

  def self.print_grid(grid)
    grid.each do |row|
      puts row.join(' ')
    end
  end

  attr_reader :size

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end

  def [](position)
    @grid[position.first][position.last]
  end

  def []=(position, value)
    row, col = position
    @grid[row][col] = value
  end

  def num_ships
    # @grid.flatten.count(:S)
    # count += @grid.map { |row| row.count(:S) }.sum

    count = 0

    @grid.each_index do |row|
      @grid.each_index do |col|
        count += 1 if @grid[row][col] == :S
      end
    end

    count
  end

  def attack(pos)
    if self[pos] == :S
      self[pos] = :H
      puts 'you sunk my battleship!'

      return true
    else
      self[pos] = :X

      return false
    end
  end

  def place_random_ships
    num_random_ships = @size * 0.25

    while num_ships < num_random_ships
      rand_row = rand(0...@grid.length)
      rand_col = rand(0...@grid.length)
      position = [rand_row, rand_col]
      self[position] = :S
    end
  end

  def hidden_ships_grid
    @grid.map do |row|
      row.map { |ele| ele == :S ? :N : ele }
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(hidden_ships_grid)
  end

end
