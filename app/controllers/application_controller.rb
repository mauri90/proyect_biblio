class ApplicationController < ActionController::Base
  before_action :authenticate_user!
    def require_admin
        unless current_user && current_user.role == 'Admin'
          redirect_to new_user_session_path
        end
    end
end
