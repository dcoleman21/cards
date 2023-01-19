class Deck 
  attr_reader :cards 

  def initialize(cards)
    @cards = cards 
  end

  def count 
    @cards.length 
  end

  def sort 
    (@cards.length - 1).times do |index|
      if @cards[index].rank > @cards[index + 1].rank
        @cards[index], @cards[index + 1] = @cards[index + 1], @cards[index]
      end
    end
    @cards 
  end
end