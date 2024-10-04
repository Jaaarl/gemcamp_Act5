class ProductsController < ApplicationController
  def index
    @products = Product.all
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

