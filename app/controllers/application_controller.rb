class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) do |u|
	    u.permit(:email, :password, :username)
	  end
	  devise_parameter_sanitizer.permit(:account_update) do |u|
	    u.permit(:email, :password, :current_password, :display_name, :username, :image)
	  end
	end
end
