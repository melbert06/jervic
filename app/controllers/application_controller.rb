class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  	protected

  		def configure_permitted_parameters
    		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :crush_fname, :crush_lname, :password, :remember_me])
    		devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    		devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :crush_fname, :crush_lname, :password, :remember_me])
  		
	end
end