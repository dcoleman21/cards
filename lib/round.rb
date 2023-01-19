class Round 
  attr_reader :deck,
              :guesses,
              :number_correct 

  def initialize(deck)
    @deck        = deck 
    @guesses     = []
    @number_correct = 0
  end

  def current_card 
    @deck.cards.first
  end

  def record_guess(new_card)
    new_guess = Guess.new("#{new_card[:value]} of #{new_card[:suit]}", current_card)
    @guesses << new_guess
    guess_check(new_guess)
    @deck.cards.insert(1, @deck.cards.delete_at(0))
    new_guess
  end

  def guess_check(new_guess)
    if new_guess.correct?
      @number_correct += 1
    end
    @number_correct 
  end

  def percentage_correct
    ((@number_correct.to_f / @guesses.count) * 100).round(2)
  end
end