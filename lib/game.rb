class Game
  def initialize
    @board = Board.new
    @first_player = Player.new('Player #1', 'X')
    @second_player = Player.new('Player #2', 'O')
    @referee = Referee.new
    @turn = 0
  end

  def play
    loop do
      @board.display
      position = current_player.choose_position(@board)
      @board.place_mark(position, current_player.mark)
      if @referee.game_over?(@board)
        annouce_result
        break
      end

      switch_player
    end
  end

  private

  def current_player
    @turn.even? ? @first_player : @second_player
  end

  def switch_player
    @turn += 1
  end

  def annouce_result
    winner = @referee.winner?(@board)
    if winner
      @board.display
      puts "\n#{winner}"
    else
      @board.display
      puts "\nIt's a tie"
    end
  end
end
