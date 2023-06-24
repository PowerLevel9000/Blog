class Api::V1::LikesController < ApplicationController
    def index
        @post = Post.find(params[:post_id])
        @likes = @post.likes
        render json: @likes
    end
end
