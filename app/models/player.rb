class Player < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :position
  has_many :votes
  has_many :messages
end
