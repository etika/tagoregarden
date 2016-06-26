class RegistrationsController < Devise::RegistrationsController
    respond_to :json,:js,:html

  def new
    super
  end
  def create
    super
  end
end