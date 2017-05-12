class Deck < ApplicationRecord
  # Remember to create a migration!
  has_many :rounds
  has_many :cards
end
