class ProductsController < ApplicationController
  def index
    @products = if params[:search].present?
                  Product.where("name LIKE ?", "%#{params[:search]}%")
                else
                  Product.all
                end
    if params[:min_quantity].present? && params[:max_quantity].present?
      @products = @products.where(quantity: params[:min_quantity].to_i..params[:max_quantity].to_i)
    elsif params[:min_quantity].present?
      @products = @products.where("quantity >= ?", params[:min_quantity].to_i)
    elsif params[:max_quantity].present?
      @products = @products.where("quantity <= ?", params[:max_quantity].to_i)
    end

    if params[:min_price].present? && params[:max_price].present?
      @products = @products.where(quantity: params[:min_price].to_i..params[:max_price].to_i)
    elsif params[:min_price].present?
      @products = @products.where("price >= ?", params[:min_price].to_i)
    elsif params[:max_price].present?
      @products = @products.where("price <= ?", params[:max_price].to_i)
    end

    if params[:available] == "1"
      @products = @products.where(available: true)
    end

    if params[:available] == "0"
      @products = @products.where(available: false)
    end

    if params[:release_start].present? && params[:release_end].present?
      @products = @products.where(release_at: params[:release_start]..params[:release_end])
    elsif params[:release_start].present?
      @products = @products.where("release_at >= ?", params[:release_start])
    elsif params[:release_end].present?
      @products = @products.where("release_at <= ?", params[:release_end])
    end
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

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params.require(:product).permit(:name, :content, :quantity, :price, :available, :released_at, :discount, :image))
      flash[:notice] = "Product created successfully"
      redirect_to products_path
    else
      flash.now[:alert] = "Product created failed"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path
    end
  end
end

