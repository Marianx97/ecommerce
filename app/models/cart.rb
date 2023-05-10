class Cart < ApplicationRecord
  belongs_to :user
  has_many :orderables
  has_many :products, through: :orderables

  def total_price
    products.to_a.sum {|product| product.price}
  end

  def add(product_id)
    product = Product.find(product_id)
    products.push(product)
  end

  def remove(product_id)
    product = Product.find(product_id)
    products.delete(product)
  end

  def empty
    products.clear
  end
end
