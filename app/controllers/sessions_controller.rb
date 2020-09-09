class SessionsController < ApplicationController
    def welcome
    end

    def new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:message] = "Login Error, please try again."
            redirect_to login_path
        end
    end

    def destroy
        reset_session
        redirect_to '/'
    end

    def google
        @user = User.find_or_create_by(email: auth["info"]["email"]) do |user|
            user.username = auth[:info][:first_name]
            user.password = SecureRandom.hex(10)
            user.team = Team.all.first #sets a random team for the user first, have user change later
        end
        # set a fake team first (so I don't have to carry @user)
        # render a page for google users to choose a team
        # update method for changing fake team to user desired team
        byebug
        if @user.save
            session[:user_id] = @user.id
            # render :team_select_page
            # update method for changing fake team to user desired team
            redirect_to user_path(@user)
        else
            redirect_to '/'
        end
    end

    private
 
    def auth
      request.env['omniauth.auth']
    end
end