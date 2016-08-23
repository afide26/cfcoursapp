class CommentUpdateJob < ApplicationJob
  queue_as :default

  def perform(comment) #current_user has been removed
    ProductChannel.broadcast_to comment.product_id, comment: render_comment(comment, comment.user), avg_rating: comment.product.avg_rating
  end

private

  def render_comment(comment, current_user)
    CommentsController.render(partial: 'comments/comment', locals: {comment: comment, current_user: current_user })
  end
end