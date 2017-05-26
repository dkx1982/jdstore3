class PostsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @post = Post.new(post_params)
    @post.product = @product
    @post.user = current_user

    if @post.save
      redirect_to product_path(@product)
    else
      render product_path(@product)
    end
  end


  private

  def post_params
    params.require(:post).permit(:content)
  end
end
