class PasswordsController <  Devise::PasswordsController
 def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)

            if successfully_sent?(resource)
            flash[:notice] = "Password Sent Successfully"
            render '/devise/passwords/new'
            # redirect_to new_user_password_path
            else
              respond_with(resource)
            end
        end

end
