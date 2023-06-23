class UsersController < ApplicationController
  def index
    @users = User.all.order(updated_at: :asc)
  end

  def show
    @user = User.includes(:posts).find(params[:id])
    @current_user = current_user
  end
end
