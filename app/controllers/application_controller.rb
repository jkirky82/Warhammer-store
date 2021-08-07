class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :current_cart
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, profile_attributes: [:street_address, :street_number, :suburb, :state, :postcode ]])
  end
  
  
  private
    def current_cart
      if session[:cart_id]
        cart = Cart.find_by(:id => session[:cart_id])
        if cart.present?
          @current_cart = cart
        else
          session[:cart_id] = nil
        end
      end

      if session[:cart_id] == nil
        @current_cart = Cart.create
        session[:cart_id] = @current_cart.id
      end
    end
end
