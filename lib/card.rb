class Card 
  attr_reader :value, 
              :suit 
              
  def initialize(value, suit)
    @value = value
    @suit  = suit 
  end

  def rank
     card_values = {
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "10" => 10,
      "Jack" => 11,
      "Queen" => 12,
      "King" => 13,
      "Ace" => 14
    }

    card_suits = {
      "Clubs" => 0,
      "Diamonds" => 1,
      "Hearts" => 2,
      "Spades" => 3
    }
    card_values[@value] + card_suits[@suit]
  end
end
