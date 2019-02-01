class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render 'index.json.jbuilder'
  end

  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      user_id: current_user.id
      )
    if @carted_product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @carted_product.errors.full_messages}, status: 422
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(params[:id])
    carted_product.update(status: "removed")
    render json: {status: " Product successfully removed from cart"}
  end

end
