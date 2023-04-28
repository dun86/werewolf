class Game < ApplicationRecord
  has_many :players
  has_many :votes
  has_many :messages
end
