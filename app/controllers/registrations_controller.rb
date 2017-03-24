require 'twilio_rest'
class RegistrationsController < Devise::RegistrationsController

    # respond_to :json,:js,:html
    include TwilioRest
  def new
    super
  end
  def create
    # super
      number_to_send_to = params[:user][:phone_number]
      activation_token=SecureRandom.hex(3)
    if params[:user][:provider].present?

       @user = User.new(fb_permitted_user)
      @user.activation_token =activation_token
      send_message(number_to_send_to,activation_token)
      @user.skip_confirmation!
      @user.save(validate: false)
      respond_to do |format|
        format.html {sign_in_and_redirect @user, :event => :authentication }
      end
    else  
      @user = User.new(permitted_user)
      @user.activation_token = activation_token
      if @user.save

        send_message(number_to_send_to,activation_token)
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