class Vote < ApplicationRecord
  belongs_to :player
  belongs_to :game
  belongs_to :target, class_name: 'Player'
end
