class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # skip_before_action :verify_authenticity_token
skip_before_filter :verify_authenticity_token
def facebook  
    fb_google_plus_authentication(request.env["omniauth.auth"],request.env["omniauth.auth"]["provider"])
  end

  def google_oauth2
    fb_google_plus_authentication(request.env["omniauth.auth"],request.env["omniauth.auth"]["provider"])
  end

  def fb_google_plus_authentication(request,provider)
    kind= provider=="facebook"? "Facebook": "google_oauth2"
    data= provider=="facebook"? "devise.facebook_data": "devise.google_oauth2"
    @user = User.from_omniauth(request)
    if @user.persisted?
      sign_in_and_redirect( @user, :event => :authentication)
      # redirect_to session_create_path(@user)
      # sign_in_and_redirect @user #this will throw if @user is not activated
      # set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      # session["devise.facebook_data"] = request.env["omniauth.auth"]
      # redirect_to new_user_registration_url
    end


end 

end