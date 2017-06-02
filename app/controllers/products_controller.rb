class ProductsController < ApplicationController
 before_action :validate_search_key, only: [:search]
 def index
   @products = case params[:order]
   when 'by_price'
    #  Product.published.order('price DESC').paginate(:page => params[:page], :per_page => 8)

     if params[:favorite] == "yes"
        @products = current_user.products.published.order('price DESC').paginate(:page => params[:page], :per_page => 8)

     elsif params[:category].blank?
        @products = Product.published.order('price DESC').paginate(:page => params[:page], :per_page => 8)
     else
        @category_id = Category.find_by(name: params[:category]).id #先找到category_id
        @products = Product.published.where(category_id:  @category_id).order('price DESC').paginate(:page => params[:page], :per_page => 5) #再根据category_id找到相对应的产品。
     end
    else
     Product.published.order('created_at DESC').paginate(:page => params[:page], :per_page => 8)

     if params[:favorite] == "yes"
         @products = current_user.products.published.order('created_at DESC').paginate(:page => params[:page], :per_page => 8)

     elsif params[:category].blank?
        @products = Product.published.order('created_at DESC').paginate(:page => params[:page], :per_page => 8)
     else
        @category_id = Category.find_by(name: params[:category]).id #先找到category_id
        @products = Product.published.where(category_id:  @category_id).order('created_at DESC').paginate(:page => params[:page], :per_page => 8) #再根据category_id找到相对应的产品。
     end

  end

  #  if params[:favorite] == "yes"
  #     @products = current_user.products.published.paginate(:page => params[:page], :per_page => 8)
   #
  #  elsif params[:category].blank?
  #     @products = Product.published.paginate(:page => params[:page], :per_page => 8)
  #  else
  #     @category_id = Category.find_by(name: params[:category]).id #先找到category_id
  #     @products = Product.published.where(category_id:  @category_id).paginate(:page => params[:page], :per_page => 5) #再根据category_id找到相对应的产品。
  #  end

end
 def show
   @product = Product.find(params[:id])
   if @product.is_hidden
    flash[:warning] = "This Product already archived"
    redirect_to root_path
   end
   @photos = @product.photos.all
   @posts = @product.posts.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
 end
 def add_to_cart
   @product = Product.find(params[:id])
      if !current_cart.products.include?(@product)
         current_cart.add_product_to_cart(@product)
        flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
      else
        flash[:warning] = "你的购物车内已有此物品"
      end
   redirect_to :back
 end
 def add_to_favorite
  @product = Product.find(params[:id])
  @product.users << current_user
  @product.save
  redirect_to :back, notice:"成功加入收藏!"
end
def quit_favorite
  @product = Product.find(params[:id])
  @product.users.delete(current_user)
  @product.save
  redirect_to :back, alert: "成功取消收藏!"
end
def upvote
  @product = Product.find(params[:id])
  if !current_user.is_voter_of?(@product)
    current_user.like!(@product)
    flash[:notice]= "您已点赞了该商品"
  else
    flash[:warning]= "您已点赞过该商品，无法重复点赞"
  end
  redirect_to :back
end
 # <----------------------制作搜索功能--------------------------------->
 def search
    if @query_string.present?
      search_result = Product.ransack(@search_criteria).result(:distinct => true)
      @products = search_result.paginate(:page => params[:page], :per_page => 5 )
    end
  end


  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "")
    if params[:q].present?
    @search_criteria = search_criteria(@query_string)
    end
  end


  def search_criteria(query_string)
    { :title_cont => query_string }
  end
  # <------------------------------------------------------------->
  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image, :category_id, :is_hidden)
  end

end
