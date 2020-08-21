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



end
