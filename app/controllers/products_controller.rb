class ProductsController < ApplicationController
  def index
    @products = Product.all
    # render 'index.html.erb' #don't need this bc implicit rendering! only works for html
  end

  def new
    @suppliers = Supplier.all
    # render 'new.html.erb'
  end

  def show
    @product = Product.find(params[:id])
    # render 'show.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: 1
      )
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find(params[:id])
    @suppliers = Supplier.all
    #implicit rendering
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end

end
