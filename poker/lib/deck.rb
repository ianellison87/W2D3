class Deck

  attr_reader :deck

  CARD_VALUES = ("2".."10").to_a + ["J","Q","K","A"] 

  CARD_SUITS = [:H,:C,:D,:S] 

  def initialize
    @deck = []    

    CARD_SUITS.each do |suit|
      CARD_VALUES.each do |value|
        deck << Card.new(suit,value)
      end
    end

  end

  def view
    deck.each do |ele|
      puts ele.to_s
    end
  end

end

d = Deck.new 
d.generate_deck
p d.deck