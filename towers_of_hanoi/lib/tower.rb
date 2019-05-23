class Tower 

  attr_reader :stack

  def initialize(tower_number)
    @tower_number = tower_number
    @stack = []
  end

  def fill_tower
    stack.push(4,3,2,1) #=> [4,3,2,1]
  end

  def move_piece(stack1, stack2)

  end

  def valid_move?(stack1, stack2)

  end

  def game_over?
    
  end

  def to_s
    "Tower #{@tower_number}"
  end


end

