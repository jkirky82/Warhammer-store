class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #Hard params devise user, adds in username, first_name, last_name and all of profile attribues 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, profile_attributes: [:street_address, :street_number, :suburb, :state, :postcode ]])
  end
  
end
