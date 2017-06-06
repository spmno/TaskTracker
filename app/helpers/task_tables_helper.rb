module TaskTablesHelper
  def product_options
    Product.all.collect { |product| [product.name, product.id]}
  end

  def customer_options
    Customer.all.collect { |customer| [customer.name, customer.id]}
  end
end
