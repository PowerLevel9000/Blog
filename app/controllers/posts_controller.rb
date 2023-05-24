class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def feed
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
