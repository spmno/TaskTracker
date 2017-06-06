module StocksHelper
  def product_options
    Product.all.collect { |product| [product.name, product.id]}
  end
end
