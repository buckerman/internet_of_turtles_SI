class ApplicationController < ActionController::Base
    helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
      
    else
      @current_user = nil
    end
  end
    helper_method :super_user
  def super_user
    if session[:user_id]
        if current_user.email == "arthur.bucker@hotmail.com"
            @super_user = @current_user
        else
            @super_user = nil
        end
    else
        @super_user = nil
    end
  end

end
