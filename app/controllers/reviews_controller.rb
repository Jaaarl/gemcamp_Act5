class ReviewsController < ApplicationController
  before_action :set_product

  def index
    @reviews = @product.reviews
  end

  def new
    @review = @product.reviews.build
  end

  def create
    @review = @product.reviews.build(comment_params)
    if @review.save
      flash[:notice] = 'review created successfully'
      redirect_to product_reviews_path(@product)
    else
      render :new
    end
  end

  private

  def set_product
    @product = Product.find params[:product_id]
  end

  def comment_params
    params.require(:review).permit(:content, :rating)
  end
end
