class Player
  attr_reader :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
  end

  def choose_position(board)
    loop do
      puts "#{@name} pick your spot. You are #{@mark}"
      user_selected = gets.chomp.to_i
      return user_selected if board.valid_move?(user_selected)

      puts 'invalid spot. pick another spot on the board'
    end
  end
end
