class ReviewsController < ApplicationController
  before_action :set_product
  before_action :set_review, only: [:edit, :update]

  def index
    @reviews = @product.reviews
  end

  def new
    @review = @product.reviews.build
  end

  def create
    @review = @product.reviews.build(review_params)
    if @review.save
      flash[:notice] = 'review created successfully'
      redirect_to product_reviews_path(@product)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @review.update(review_params)
      flash[:notice] = 'review updated successfully'
      redirect_to product_reviews_path(@product)
    else
      render :edit
    end
  end

  private

  def set_product
    @product = Product.find params[:product_id]
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = @product.reviews.find(params[:id])
  end
end
