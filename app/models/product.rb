class Product < ApplicationRecord

  #validators
  # validates :name, presence: true, uniqueness: true
  # validates :price, numericality: true
  # validates :description, length: {in: 1..500}

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end #replaced with below line of code
  belongs_to :supplier


  # def images
  #   Image.where(product_id: id)
  # end #replaced with below line of code
  # has_many :images
  has_many :category_products
  has_many :categories, through: :category_products

  has_many :carted_products
  has_many :orders, through: :carted_products
  

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

  def category_names
    categories.map{|category| category.name}
    
  end

end
