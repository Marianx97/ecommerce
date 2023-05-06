class CartController < ApplicationController
  before_action :initialize_cart
  def show
  end

  def initialize_cart
    @cart ||= Cart.find_by(user_id: current_user.id)

    @cart = Cart.create(user_id: current_user.id) if @cart.nil?
  end
end
