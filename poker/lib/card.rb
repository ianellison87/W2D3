class Card

  attr_reader :value, :suit, :deck #getter methods

  def initialize(suit,value)
    @value = value
    @suit = suit
  end

  def inspect
    "--#{@value}#{@suit}--"  
  end

end
