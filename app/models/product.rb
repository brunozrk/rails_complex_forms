class Product < ActiveRecord::Base
  has_many :sales
  has_many :sellers, through: :sales
end
