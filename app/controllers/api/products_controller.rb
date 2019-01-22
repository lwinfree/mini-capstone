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

  def query_products
    query_products = params["product"]
    # @display = Product.find_by(name:query_products)
    @display = Product.find_by(id: query_products)
    render 'query_products.json.jbuilder'
    #for names with spaces, use %20 for the space in the URL
  end

  def index
    @products = Product.all
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
      image_url: params["image_url"],
      description: params["description"]
      )
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "destroyed"}
  end

end
