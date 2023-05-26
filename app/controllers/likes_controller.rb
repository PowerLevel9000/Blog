class LikesController < ApplicationController
    def new
      @like = Like.new
      @user = current_user
    end
  
    def create
        user = current_user
        post = Post.find(params[:post_id])
        like = Like.create(post: post, author: user)
        redirect_to request.referrer
      end
      
  end
  