class CommentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:success] = "Your comment has been saved"
      redirect_to product_path(@product)
    else
      render @product
    end
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id,:body, :rating)
    end
end
