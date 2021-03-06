class Score < ActiveRecord::Base
  belongs_to :game
  belongs_to :player

  accepts_nested_attributes_for :player

  validates :value, :player_id, presence: true
end
