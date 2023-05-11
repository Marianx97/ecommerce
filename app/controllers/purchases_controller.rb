class PurchasesController < ApiController
  before_action :set_purchase, only: %i[show]

  def index
    @purchases = Purchase.where(user_id: current_user&.id)
  end

  def show; end

  def create
    products_without_stock = @cart.products.select { |p| p.stock == 0 }

    if products_without_stock.empty?
      ActiveRecord::Base.transaction do
        purchase = Purchase.create(
          user_id: current_user.id,
          products: @cart.products
        )

        purchase.products.each do |product|
          product.lock!
          product.decrement!(:stock)
        end

        @cart.empty

        redirect_to action: :show, id: purchase.id
      end
    else
      products_without_stock.each do |product|
        @cart.remove(product.id)
        redirect_to @cart, alert: 'Products without stock were removed from cart'
      end
    end
  end

  private

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end
end
