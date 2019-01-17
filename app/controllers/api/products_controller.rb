class Api::ProductsController < ApplicationController

  def all_products_method
    @products = Product.all
    render 'all-products.json.jbuilder'
  end

  def canvas_method
    @canvas = Product.find_by(name: "canvas")
    render 'canvas.json.jbuilder'
  end

  def fan_brush_method
    @fan_brush = Product.find_by(name: "fan brush")
    render 'fan-brush.json.jbuilder'
  end

  def phthalo_blue_method
    @phthalo_blue = Product.find_by(name: "phthalo blue")
    render 'phthalo-blue.json.jbuilder'
  end

  def palette_knife_method
    @palette_knife = Product.find_by(name: "palette knife")
    render 'palette-knife.json.jbuilder'
  end

end
