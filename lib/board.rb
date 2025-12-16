class Board
  def initialize
    @cells = (1..9).to_a
  end

  def display
    p @cells[0, 3]
    p @cells[3, 3]
    p @cells[6, 3]
  end

  def place_mark(position, mark)
    @cells[position - 1] = mark
  end

  def valid_move?(position)
    position >= 1 && position <= 9 &&
      @cells[position - 1] != 'X' && @cells[position - 1] != 'O'
  end

  def get_position(position)
    @cells[position - 1]
  end

  def full?
    @cells.all? { |cell| %w[X O].include?(cell) }
  end
end
