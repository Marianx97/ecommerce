class ApiController < ApplicationController
  before_action :authenticate_user!
  before_action :initialize_cart

  def initialize_cart
    @cart ||= Cart.find_by(user_id: current_user&.id)

    @cart = Cart.create(user_id: current_user&.id) if @cart.nil?
  end
end
