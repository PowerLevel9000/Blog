class CommentsController < ApplicationController
    def new
      @comment = Comment.new
      @user = current_user
    end
  
    def create
      user = current_user
      post = Post.find(params[:post_id])
      new_comment =
        Comment.create(post: post, author: user, text: comment_params['text'])
        redirect_to request.referrer
    end

    private
  
    def comment_params
      params.require(:new_comment).permit(:text)
    end
  end