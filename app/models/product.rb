class Product < ApplicationRecord
  before_save { self.product_name = product_name.titlecase }

  belongs_to :user

  def self.search(params)
    products = Product.where(country:params)
  end

end
