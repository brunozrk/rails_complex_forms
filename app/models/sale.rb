class Sale < ActiveRecord::Base
  belongs_to :seller
  belongs_to :product

  validates :seller_id, :product_id, :quantity, presence: true
end
