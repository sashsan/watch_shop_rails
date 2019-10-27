module CartsHelper

  def products
    @products ||= cart_items.joins(:product).all
  end

end
