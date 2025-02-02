class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # comment for ssh test!!

  def current_user
    User.find_by(id: session[:user_id]) || User.new
  end

  def require_login
    if current_user.id.nil?
      redirect_to '/login'
    end
  end
end
