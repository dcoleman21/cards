require './lib/card'
require './lib/deck'

RSpec.describe Deck do 
  describe 'Iteration 2' do 
    it 'exists' do 
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      card_3 = Card.new("5", "Diamonds")

      cards = [card_1, card_2, card_3]

      deck = Deck.new(cards)

      expect(deck).to be_an_instance_of(Deck)
    end

    it 'has attributes' do 
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      card_3 = Card.new("5", "Diamonds")

      cards = [card_1, card_2, card_3]

      deck = Deck.new(cards)

      expect(deck.cards).to eq([card_1, card_2, card_3])
    end

    it 'can get the count of cards in a deck' do
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      card_3 = Card.new("5", "Diamonds")

      cards = [card_1, card_2, card_3]

      deck = Deck.new(cards)

      expect(deck.count).to eq(3)
    end
  end

  describe 'Iteration 3' do 
    it 'can sort cards based on their value lowest to highest' do 
      card_1 = Card.new("4","Hearts")
      card_2 = Card.new("Ace", "Spades")
      card_3 = Card.new("5", "Diamonds")
      card_4 = Card.new("Jack", "Clubs")
      card_5 = Card.new("Ace", "Diamonds")
      deck = Deck.new([card_1, card_2, card_3, card_4, card_5])

      expected = [card_1, card_3, card_4, card_5, card_2]

      expect(deck.sort).to eq(expected)
    end
  end
end