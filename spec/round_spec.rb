require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/guess'

RSpec.describe Round do
  describe 'Iteration 2' do
    it 'exists' do
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      expect(round).to be_an_instance_of(Round)
    end

    it 'has attributes' do
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      expect(round.deck).to eq(deck)
    end

    it 'starts with no guesses' do
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      expect(round.guesses).to eq([])
    end

    it 'can get the current card in a round' do
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      expect(round.current_card).to eq(card_1)
    end
    
    it 'can test is if guess is correct' do 
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")
      
      deck = Deck.new([card_1, card_2])
      
      round = Round.new(deck)
      
      new_guess = round.record_guess({value: "3", suit: "Hearts"})

      round.guess_check(new_guess)

      expect(new_guess.class).to eq(Guess)
      expect(new_guess.correct?).to eq(true)
    end

    it 'can record a guess' do 
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      new_guess = round.record_guess({value: "3", suit: "Hearts"})

      expect(round.guesses).to eq([new_guess])
    end

    it 'can get number of correct guesses' do
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      round.record_guess({value: "3", suit: "Hearts"})

      expect(round.number_correct).to eq(1)
    end

    it 'can get the rounds current card' do 
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      expect(round.current_card).to eq(card_1)

      round.record_guess({value: "3", suit: "Hearts"})

      expect(round.current_card).to eq(card_2)
    end

    it 'can check the guesses count and feedback' do 
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      round.record_guess({value: "3", suit: "Hearts"})

      round.record_guess({value: "Jack", suit: "Diamonds"})

      expect(round.guesses.count).to eq(2)
      expect(round.guesses.last.feedback).to eq("Incorrect.")
      expect(round.number_correct).to eq(1)
    end

    it 'can get the percentage correct' do 
      card_1 = Card.new("3","Hearts")
      card_2 = Card.new("4", "Clubs")

      deck = Deck.new([card_1, card_2])

      round = Round.new(deck)

      round.record_guess({value: "3", suit: "Hearts"})

      round.record_guess({value: "Jack", suit: "Diamonds"})

      expect(round.percentage_correct).to eq(50.0)
    end
  end
end