class Guess < ApplicationRecord
  belongs_to  :card
  belongs_to  :round

  def correct_guesses # method to keep track of correct guesses
    self.number_correct +=1
    self.save
  end
end
