class ApplicationController < ActionController::Base

    def current_user
        User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def redirect_if_not_logged_in
        if !logged_in?
            flash[:message] = "Please log in to proceed."
            redirect_to '/'
        end
    end
end
