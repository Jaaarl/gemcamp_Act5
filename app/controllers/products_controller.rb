class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    filter_params
    Rails.logger.info "This is params #{params}"
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product].permit(:name, :content, :quantity, :price, :available, :released_at, :discount, :image))
    if @product.save
      flash[:notice] = "Product created successfully"
      redirect_to products_path
    else
      flash.now[:alert] = "Product created failed"
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  def edit; end

  def update
    if @product.update(params.require(:product).permit(:name, :content, :quantity, :price, :available, :released_at, :discount, :image))
      flash[:notice] = "Product created successfully"
      redirect_to products_path
    else
      flash.now[:alert] = "Product created failed"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_path
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def search_name
    @products = if params[:search].present?
                  Product.where("name LIKE ?", "%#{params[:search]}%")
                else
                  Product.all
                end
  end

  def filter_quantity
    if params[:min_quantity].present? && params[:max_quantity].present?
      @products = @products.where(quantity: params[:min_quantity].to_i..params[:max_quantity].to_i)
    elsif params[:min_quantity].present?
      @products = @products.where("quantity >= ?", params[:min_quantity].to_i)
    elsif params[:max_quantity].present?
      @products = @products.where("quantity <= ?", params[:max_quantity].to_i)
    end
  end

  def filter_price
    if params[:min_price].present? && params[:max_price].present?
      @products = @products.where(quantity: params[:min_price].to_i..params[:max_price].to_i)
    elsif params[:min_price].present?
      @products = @products.where("price >= ?", params[:min_price].to_i)
    elsif params[:max_price].present?
      @products = @products.where("price <= ?", params[:max_price].to_i)
    end
  end

  def filter_availability
    if params[:available] == "1"
      @products = @products.where(available: true)
    elsif params[:available] == "0"
      @products = @products.where(available: false)
    end
  end

  def filter_release_date
    if params[:release_start].present? && params[:release_end].present?
      @products = @products.where(released_at: params[:release_start]..params[:release_end])
    elsif params[:release_start].present?
      @products = @products.where("release_at >= ?", params[:release_start])
    elsif params[:release_end].present?
      @products = @products.where("release_at <= ?", params[:release_end])
    end
  end

  def filter_params
    search_name
    filter_quantity
    filter_price
    filter_availability
    filter_release_date
  end
end

