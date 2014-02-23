class Product < ActiveRecord::Base
  belongs_to :seller
  has_many :purchases
end