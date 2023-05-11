require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with valid attributes" do
    expect(Product.new(attributes_for(:product))).to be_valid
  end

  it "is not valid without a name" do
    attributes = attributes_for(:product).except(:name)
    product = Product.new(attributes)
    expect(product).to_not be_valid
  end

  it "is not valid without a description" do
    attributes = attributes_for(:product).except(:description)
    product = Product.new(attributes)
    expect(product).to_not be_valid
  end

  it "is not valid without a price" do
    attributes = attributes_for(:product).except(:price)
    product = Product.new(attributes)
    expect(product).to_not be_valid
  end

  it "is not valid without a stock" do
    attributes = attributes_for(:product).except(:stock)
    product = Product.new(attributes)
    expect(product).to_not be_valid
  end

  it "is not valid with negative stock" do
    attributes = attributes_for(:product)
    attributes[:stock] = -1
    product = Product.new(attributes)
    expect(product).to_not be_valid
  end
end
