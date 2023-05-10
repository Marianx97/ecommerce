class Purchase < ApplicationRecord
  belongs_to :user
  has_many :purchasables
  has_many :products, through: :purchasables

  def total_price
    products.to_a.sum {|product| product.price}
  end
end
