class Guess 
  attr_reader :response,
              :card 

  def initialize(response, card)
    @response = response
    @card     = card 
    @correct  = true 
  end

  def correct?
    if "#{card.value} of #{card.suit}" == response 
      @correct 
    else
      @correct = false 
    end
  end

  def feedback
    if "#{card.value} of #{card.suit}" == response 
      "Correct!"
    else
      "Incorrect."
    end
  end
end