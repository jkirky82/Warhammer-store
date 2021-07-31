class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, profile_attributes: [:first_name , :last_name], location_attributes: [:street_address, :street_number, :suburb, :state, :postcode ]])
  end



end
