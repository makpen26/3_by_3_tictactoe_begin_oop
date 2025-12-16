class Referee
  WINNING_PATTERN = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ]

  def has_winning_pattern(board, mark)
    WINNING_PATTERN.any? do |pattern|
      pattern.all? { |pos| board.get_position(pos) == mark }
    end
  end

  def winner?(board)
    return 'X wins' if has_winning_pattern(board, 'X')

    'O wins' if has_winning_pattern(board, 'O')
  end

  def game_over?(board)
    winner?(board) || board.full?
  end
end
