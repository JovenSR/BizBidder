class ApplicationController < ActionController::Base
  session[:user_id] = 1

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
     
  end
  helper_method :current_user

end
