require 'twilio_rest'
class RegistrationsController < Devise::RegistrationsController
      include TwilioRest
  def new
    super
  end
  def create
    # super
    if params[:user][:provider].present?
      @user = User.new(fb_permitted_user)
      send_message(params[:user][:phone_number],"Welcome to Tagore Garden Wala")
      @user.skip_confirmation!
      @user.save(validate: false)
      respond_to do |format|
         format.html {sign_in_and_redirect @user, :event => :authentication }
      end
    else  
      @user = User.new(permitted_user)
      if @user.save
        respond_to do |format|
          format.html{ sign_in_and_redirect @user}
        end
      else
        @errors=@user.errors
        respond_to do |format|
          format.html {render "/devise/registrations/new"}
        end
      end
    end
    end
  protected
  def permitted_user
    params.require(:user).permit(:email,:role_ids,:phone_number,:full_name,:address,:password,:password_confirmation,roles: [])
  end
  def fb_permitted_user
    params.require(:user).permit(:email,:role_ids,:uid,:provider)
  end
end