class SessionsController < Devise::SessionsController
  #       skip_before_filter :verify_authenticity_token, if: :json_request?
  respond_to :json,:js,:html

  def create
    # byebug
    #  # resource = warden.authenticate!(:scope => resource_name, :recall => "sessions#handle_failed_login")
    #     respond_to do |format|
    #        resource = warden.authenticate!(:scope => resource_name, :recall => "sessions#handle_failed_login")
    #           format.html
    #           format.js 
    #      end
    super
    
    end
  def destroy
    super
  end
  def handle_failed_login
  end 
  end
  