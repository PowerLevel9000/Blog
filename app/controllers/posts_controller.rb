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

  def new
    @post = Post.new
    @current_user = current_user
  end
  
  def create
    @current_user = current_user
    @post = Post.create(
      author: current_user,
      title: post_params['title'],
      text: post_params['text'],
    )
    redirect_to user_post_path(@current_user, @post)
  end

  def destroy
    @post = Post.find(params[:id])
  
    if @post.destroy
      redirect_to root_path, notice: "Post was successfully destroyed."
    else
      redirect_to root_path, alert: "Failed to destroy post."
    end
  end
  
  
  private 

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
