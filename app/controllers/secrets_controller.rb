class SecretsController < ApplicationController
    before_action :require_login
    
    def show
    end
  
    private 

    def require_login
        redirect_to new_sessions_path unless current_user
    end
    
  end