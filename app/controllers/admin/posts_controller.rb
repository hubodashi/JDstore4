class Admin::PostsController < ApplicationController
  before_action :authenticate_user!, only: [:destroy]

  def destroy
    @post = Post.find(params[:id])

    @post.destroy

    redirect_to(:back)
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
