class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[show]

  def index
    @purchases = Purchase.where(user_id: current_user&.id)
  end

  def show; end

  private

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end
end
