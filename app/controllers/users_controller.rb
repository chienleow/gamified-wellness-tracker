class UsersController < ApplicationController
    before_action :redirect_if_not_logged_in, only: [:show, :index]

    def new
        if params[:team_id] && @team = Team.find_by_id(params[:team_id])
            @user = @team.users.build
        else
            flash[:message] = "That team doesn't exit." if params[:team_id]
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
        @usergoals = @user.user_goals # to prevent chaining too long
        redirect_to '/' if !@user
    end

    def index
        if params[:team_id] && @team = Team.find_by_id(params[:team_id])
            @users = @team.users
        else
            flash[:message] = "That team doesn't exit." if params[:team_id]
            @users = User.all
        end
    end

    def edit
        @user = User.find_by_id(params[:id])
        redirect_to users_path if @user != current_user
    end
    
    def update
        @user = User.find_by_id(params[:id])
        redirect_to users_path if @user != current_user
        if @user.update(user_params)
          redirect_to user_path(@user)
        else
          render :edit
        end
    end

    private
        def user_params
            params.require(:user).permit(:username, :email, :password, :team_id)
        end
end
