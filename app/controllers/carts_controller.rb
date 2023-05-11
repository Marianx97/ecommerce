class CartsController < ApiController
  def show; end

  def add_product
    @cart.add(params[:product_id])
  end

  def remove_product
    @cart.remove(params[:product_id])
  end
end
