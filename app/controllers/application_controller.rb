class ApplicationController < ActionController::Base
  def current_user
    @current_user = nil #User.first
  end
end
