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
    @current_user = current_user
    if @post.destroy
      redirect_to user_posts_path(@current_user), notice: "Post was successfully destroyed."
    else
      redirect_to user_post_path(@current_user), alert: "Failed to destroy post."
    end
  end
  
  def edit
    @post = Post.find(params[:id])
    @current_user = current_user
  end

  def update
    @post = Post.find(params[:id])
    @current_user = current_user
    @post.update(
      author: current_user,
      title: post_params['title'],
      text: post_params['text'],
    )
    redirect_to user_post_path(@current_user, @post), notice: "Post updated"
  end
  
  private 

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
