class UsersController < ApplicationController
    def new
        if params[:team_id] && @team = Team.find(params[:team_id])
            @user = @team.users.build
        else
            @error = "That user doesn't exit" if params[:user_id]
            @user = User.new
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        redirect_if_not_logged_in
        @user = User.find_by_id(params[:id])
        redirect_to '/' if !@user
    end

    def index
        if params[:team_id]
            @users = Team.find(params[:team_id]).users
        else
            @error = "That user doesn't exit" if params[:user_id]
            @users = User.all
        end
    end

    private

        def user_params
            params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :team_id)
        end
end
