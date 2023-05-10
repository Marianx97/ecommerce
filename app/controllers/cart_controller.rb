class CartController < ApplicationController
  before_action :initialize_cart

  def show; end

  def add_product
    puts 'Hello there'
  end

  def remove_product
    puts 'General Kenobi'
  end

  def initialize_cart
    @cart ||= Cart.find_by(user_id: current_user&.id)

    @cart = Cart.create(user_id: current_user&.id) if @cart.nil?
  end
end
