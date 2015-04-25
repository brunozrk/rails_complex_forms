class Address < ActiveRecord::Base
  belongs_to :person

  validates :street, :number, presence: true
end
