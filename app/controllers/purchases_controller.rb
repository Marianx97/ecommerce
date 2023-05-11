class PurchasesController < ApiController
  before_action :set_purchase, only: %i[show]

  def index
    @purchases = Purchase.where(user_id: current_user&.id)
  end

  def show; end

  def create
    purchase = Purchase.create(
      user_id: current_user.id,
      products: @cart.products
    )

    empty_cart if purchase.id.present?

    redirect_to action: :show, id: purchase.id
  end

  private

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  def empty_cart
    @cart.empty
  end
end
