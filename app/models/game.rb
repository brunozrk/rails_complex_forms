class Game < ActiveRecord::Base
  has_many :scores
  has_many :players, through: :scores

  accepts_nested_attributes_for :scores, allow_destroy: true
  accepts_nested_attributes_for :players
end
