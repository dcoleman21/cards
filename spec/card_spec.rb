require './lib/card'
require 'rspec'

RSpec.describe Card do
  describe 'Iteration 1' do 
    it "exists" do
      card = Card.new("Ace", "Spades")
      expect(card).to be_instance_of Card
    end

    it "has a value" do
      card = Card.new("Ace", "Spades")
      expect(card.value).to eq("Ace")
    end

    it "has a suit" do
      card = Card.new("Ace", "Spades")
      expect(card.suit).to eq("Spades")
    end
  end

  describe 'Iteration 3' do 
    it 'can rank the cards' do 
      card_1 = Card.new("4","Hearts")
      card_2 = Card.new("Ace", "Spades")

      expect(card_1.rank).to eq(6)
      expect(card_2.rank).to eq(17)
    end
  end
end