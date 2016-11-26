require 'twilio_rest'
class RegistrationsController < Devise::RegistrationsController
    # respond_to :json,:js,:html

  def new
    super
  end
  def create
    # super
    if params[:user][:provider].present?
      @user = User.new(fb_permitted_user)
       send_message(number_to_send_to,"assa")
      @user.skip_confirmation!
      @user.save(validate: false)
      #  begin
      #      if params[:user][:activation_token].present?
      #        send_message(number_to_send_to,params[:user][:activation_token])
      #        @user.update_attributes(:phone_verified=>false)
      #      end
      #    rescue Exception => e
      #      puts "caught exception #{e}! ohnoes!"
      #    end
      #    $facebook_sign_in=true
      #    format.js{ redirect_to root_path(:notice=> "Sign up with  #{params[:user][:provider]} has been Successful")} 
      #    # format.html {redirect_to root_path(:notice=> "Sign up with #{ params[:user][:provider]} has been Successful") }
               respond_to do |format|

         format.html {sign_in_and_redirect @user, :event => :authentication }
              end
      #     # format.html {redirect_to  root_path(:notice=> "Sign up with Facebook has been Successful")} 
      # format.html{render "home/index", :notice=>"Sign up with Facebook has been Successful" }
    else  
      @user = User.new(permitted_user)
      if @user.save
      #  puts "Data Saved Successfully"
      #    # begin
      #    #   if params[:user][:activation_token].present?
      #    #     send_message(number_to_send_to,params[:user][:activation_token])
      #    #     current_user.update_attributes(:phone_verified=>false)
      #    #   end
      #    # rescue Exception => e
      #    #   puts "caught exception #{e}! ohnoes!"
      #    # end
      #     # format.js { render :file => "/devise/registrations/create.js.erb" }
        respond_to do |format|
          format.html{ redirect_to root_path}
        end
      else
        @errors=@user.errors
      #   # if  @errors.present?
      #   #   @errors.full_messages.each do |err|
      #   #   if err.split(" ").first =="Profile"
      #   #     err=err.split(' ')[1..-1].join(' ')
      #   #   end
      #   #   @errors_message+=err+ "<br>"
      #   #   end
      #   # end
      #   # @errors_message=@errors_message.html_safe
      #   # format.js { render :file => "/devise/registrations/create.js.erb" }
            respond_to do |format|
        format.html {render "/devise/registrations/new"}
        end
      end

      # @errors_message=@errors_message.html_safe
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