class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def has_inventory
    self.inventory == nil || self.inventory < 1 ? false : true

  end
end
