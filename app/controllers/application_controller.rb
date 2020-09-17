class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?
    # give access to methods in the views

    private
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
