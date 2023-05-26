class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @user = current_user
  end

  def create
    user = current_user
    post = Post.find(params[:post_id])
    new_comment = Comment.new(post:, author: user, text: comment_params['text'])

    if new_comment.save
      redirect_to request.referrer, notice: 'Comment created successfully!'
    else
      redirect_to request.referrer, alert: 'Comment could not be created.'
    end
  end

  private

  def comment_params
    params.require(:new_comment).permit(:text)
  end
end
