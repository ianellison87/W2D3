class Game

  attr_reader :board

  def initialize
    @board = []
    populate_game
  end



  def populate_game
    n = 0
    while n < 4
      board << Tower.new(n)
      n += 1
    end
  end



end
