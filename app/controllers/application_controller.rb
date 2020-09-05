class ApplicationController < ActionController::Base

    helpers do
        def current_user
            User.find_by(id: session[:user_id])
        end
    
        def logged_in?
            !!current_user
        end

        def redirect_if_not_logged_in
            if !logged_in?
                flash[:message] = "Please log in to proceed."
                redirect_to login_path
            end
        end
    end
end
