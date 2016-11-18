class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  # def current_user
  #     @current_user ||= User.find(session[:user_id])
  #   end

    def can_administer?
      current_user.try(:admin?)
    end
   def after_sign_in_path_for(resource)
    if resource.roles.pluck(:name).include?("customer")
      session[:user_id]=resource.id
      home_path
    else
      session[:user_id]=resource.id
      new_entry_path
    end
  end
end
