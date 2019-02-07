class Api::ProductsController < ApplicationController

  # def all_products_method
  #   @products = Product.all
  #   render 'all-products.json.jbuilder'
  # end

  # def canvas_method
  #   @canvas = Product.find_by(name: "canvas")
  #   render 'canvas.json.jbuilder'
  # end

  # def fan_brush_method
  #   @fan_brush = Product.find_by(name: "fan brush")
  #   render 'fan-brush.json.jbuilder'
  # end

  # def phthalo_blue_method
  #   @phthalo_blue = Product.find_by(name: "phthalo blue")
  #   render 'phthalo-blue.json.jbuilder'
  # end

  # def palette_knife_method
  #   @palette_knife = Product.find_by(name: "palette knife")
  #   render 'palette-knife.json.jbuilder'
  # end

  # def query_products
  #   query_products = params["product"]
  #   # @display = Product.find_by(name:query_products)
  #   @display = Product.find_by(id: query_products)
  #   render 'query_products.json.jbuilder'
  #   #for names with spaces, use %20 for the space in the URL
  # end
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    # search_term = params[:search]
    # if search_term
    #   @products = Product.where("name LIKE ?", "%#{search_term}%")
    # end

    # discount = params[:discount]
    # if discount
    #   @products = Product.where("price < ?", 5)
    # end

    # sort_term = params[:sort]
    # sort_order = params[:sort_order]
    # if sort_term == "price"
    #   if sort_order = params["sort"]
    #     @products = @products.order(price: :desc)
    #   else
        @products = @products.order(price: :desc)
    #   end
    # else @products = @products.order(:id)
    # end

    # if params[:category]
    #   category = Category.find_by(name: params[:category])
    #   @products = category.products
    # end


    render 'index.json.jbuilder'
  end

  def show
    @product = Product.find_by(id: params["id"])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"]
      )
    if @product.save
      render 'show.json.jbuilder'
    else #sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description
    if @product.save
      render 'show.json.jbuilder'
    else #sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "destroyed"}
  end

end
