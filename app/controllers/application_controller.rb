class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: [:home]
    before_action :configure_permitted_parameters, if: :devise_controller?, except: [:home]

    def after_update_path_for(resource)
        user_path(current_user)
    end

    def after_sign_in_path_for(resource)
        user_path(current_user)
    end

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :location, :bio, :main_image])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :bio, :location, :main_image])
    end

 
end
