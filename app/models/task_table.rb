class TaskTable < ApplicationRecord
  def product_id
    @products = Product.all
  end
  def customer_id
    @customer = Customer.all
  end
  belongs_to :product
  belongs_to :customer
end
