class Product < ApplicationRecord

  #validators
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: true
  validates :description, length: {in: 1..500}

  def is_discounted?
    price <= 10 #this replaces the if statement!
    # if price < 10
    #   return true
    # else
    #   return false
    # end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
