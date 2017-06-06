class Stock < ApplicationRecord
  belongs_to :product
  def product_id
    @products = Product.all
  end
end
