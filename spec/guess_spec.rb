require './lib/guess'
require './lib/card'

RSpec.describe Guess do 
  describe 'Iteration 1' do 
    it 'exists' do
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)

      expect(card).to be_an_instance_of(Card)
      expect(guess).to be_an_instance_of(Guess)
    end

    it 'has attributes' do 
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)

      expect(guess.card).to eq(card)
      expect(guess.response).to eq("10 of Hearts")
    end

    it 'can see if a guess is correct or incorrect' do
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)

      expect(guess.correct?).to eq(true)

      card = Card.new("Queen", "Clubs")
      guess = Guess.new("2 of Diamonds", card)

      expect(guess.correct?).to eq(false)
    end

    it 'can give feedback for a guess' do
      card = Card.new("10", "Hearts")
      guess = Guess.new("10 of Hearts", card)

      expect(guess.feedback).to eq("Correct!")

      card = Card.new("Queen", "Clubs")
      guess = Guess.new("2 of Diamonds", card)

      expect(guess.feedback).to eq("Incorrect.")
    end
  end
end