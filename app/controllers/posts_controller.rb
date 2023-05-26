class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def feed
    @posts = Post.all
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @current_user = current_user
  end

  def new
    @post = Post.new
    @current_user = current_user
  end

  def create
    @current_user = current_user
    @post = Post.new(
      author: current_user,
      title: post_params['title'],
      text: post_params['text']
    )
    if @post.save
      redirect_to user_post_path(@current_user, @post), notice: 'Post created successfully!'
    else
      redirect_to new_user_post_path(@current_user), alert: 'Failed to create post.'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @current_user = current_user
    if @post.destroy
      redirect_to user_posts_path(@current_user), notice: 'Post was successfully destroyed.'
    else
      redirect_to user_post_path(@current_user), alert: 'Failed to destroy post.'
    end
  end

  def edit
    @post = Post.find(params[:id])
    @current_user = current_user
  end

  def update
    @post = Post.find(params[:id])
    @current_user = current_user
    if @post.update(post_params)
      redirect_to user_post_path(@current_user, @post), notice: 'Post updated successfully!'
    else
      redirect_to edit_user_post_path(@current_user, @post), alert: 'Failed to update post.'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
