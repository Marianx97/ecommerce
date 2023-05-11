class CartsController < ApiController
  def show; end

  def add_product
    @cart.add(params[:product_id])

    redirect_to @cart
  end

  def remove_product
    @cart.remove(params[:product_id])

    redirect_to @cart
  end
end
