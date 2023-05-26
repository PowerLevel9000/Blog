class LikesController < ApplicationController
  def new
    @like = Like.new
    @user = current_user
  end

  def create
    user = current_user
    post = Post.find(params[:post_id])
    like = Like.new(post:, author: user)

    if like.save
      redirect_to request.referrer, notice: 'Like added successfully!'
    else
      redirect_to request.referrer, alert: 'Unable to add like.'
    end
  end
end
