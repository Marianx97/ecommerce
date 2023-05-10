class Cart < ApplicationRecord
  belongs_to :user
  has_many :orderables
  has_many :products, through: :orderables

  def total_price
    products.to_a.sum {|product| product.price}
  end
end
