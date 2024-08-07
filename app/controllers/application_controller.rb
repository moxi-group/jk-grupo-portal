class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit( 
            :password, 
            :password_confirmation,  
            :current_password
        )}

        devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(
            :login,
            :email, 
            :cell_phone, 
            :password, 
            :password_confirmation
        )}
    end
    
end
