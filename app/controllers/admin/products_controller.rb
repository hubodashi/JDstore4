class Admin::ProductsController < ApplicationController
  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @products = Product.all.order("position ASC").paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @product = Product.new
    # 分类功能
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def edit
    @product = Product.find(params[:id])
    # 分类功能
    @categories = Category.all.map{ |c| [c.name, c.id]}
  end

  def update
    @product = Product.find(params[:id])
    # 分类功能
    @product.category_id = params[:category_id]
    if @product.update(product_params)
      redirect_to admin_products_path
    else
      render :edit
    end

  end

  def create
    @product = Product.new(product_params)
    # 分类功能
    @product.category_id = params[:category_id]
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end

  end

  def destroy
    @product=Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path
  end

  def move_up
     @product = Product.find(params[:id])
     @product.move_higher
     redirect_to :back
   end

  def move_down
    @product = Product.find(params[:id])
    @product.move_lower
    redirect_to :back
  end

private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image, :category_id, :is_hidden)
  end

end
