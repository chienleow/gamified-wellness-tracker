class SessionsController < ApplicationController
    def welcome
    end

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            # flash[:message] = "Login Error, please try again."
            redirect_to login_path
        end
    end

    def show

    end

    def index
        
    end

    def destroy
        reset_session
        redirect_to '/'
    end

    def google_login
        if @user = User.find_by(email: auth["info"]["email"]) # if google user exists, team reassigning method not needed
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @user = User.create(email: auth["info"]["email"]) do |user|
                user.username = auth[:info][:first_name]
                user.email = auth[:info][:email]
                user.password = SecureRandom.hex(10)
                user.team = Team.all.first #sets a random team for the user first, have user change later
            end
            # set a fake team first (so I don't have to carry @user)
            # render a page for google users to choose a team
            # update method for changing fake team to user desired team
            if @user.save
                session[:user_id] = @user.id
                redirect_to edit_user_path(@user)
            else
                # flash[:message] = "Login Error, please try again."
                redirect_to '/'
            end
        end
    end

    private
 
    def auth
      request.env['omniauth.auth']
    end
end