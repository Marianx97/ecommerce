class Product < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
end
