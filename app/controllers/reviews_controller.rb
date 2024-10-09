class ReviewsController < ApplicationController
  before_action :set_product

  def index
    @reviews = @product.reviews
  end

  private

  def set_product
    @product = Product.find params[:product_id]
  end
end
