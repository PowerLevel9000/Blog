class PostsController < ApplicationController
  def index; end
  
  def feed
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
end
