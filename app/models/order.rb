class Order < ActiveRecord::Base

  has_many :ordered_products
  has_one :customer

end
