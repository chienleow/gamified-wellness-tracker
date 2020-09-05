class SessionsController < ApplicationController
    def welcome
    end

    def new
    end

    def destroy
        reset_session
        redirect_to '/'
    end

    def create
        # byebug
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:message] = "Login Error, please try again."
            redirect_to login_path
        end
    end
end