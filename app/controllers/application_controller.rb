class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: %i[username email]
    )
  end
end
