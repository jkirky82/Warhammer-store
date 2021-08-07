module LineItemsHelper
  def total_price
    self.quantity * self.product.price
  end
end
