class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :authenticate_user!

  protected

  def after_sign_up_path_for(resource)
    '/profile'
  end
end
