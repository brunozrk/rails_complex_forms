class Game < ActiveRecord::Base
  has_many :scores, dependent: :destroy
  has_many :players, through: :scores

  accepts_nested_attributes_for :scores, allow_destroy: true
  accepts_nested_attributes_for :players

  validates :name, presence: true
end
