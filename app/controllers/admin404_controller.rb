class Admin404Controller < ApplicationController
    before_action :authenticate_admin!
  
    def index
      @users = User.where.not(id: current_user.id).order(updated_at: :asc)
    end
  
    private
  
    def authenticate_admin!
      redirect_to root_path, alert: "Access denied." unless current_user&.admin?
    end
end
  