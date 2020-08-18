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



end
