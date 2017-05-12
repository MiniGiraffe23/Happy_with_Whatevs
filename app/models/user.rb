class User < ApplicationRecord
  # Remember to create a migration!
  has_many :rounds
  has_many :guesses, through: :rounds
end
