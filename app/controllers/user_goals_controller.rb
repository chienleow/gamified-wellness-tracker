class UserGoalsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @usergoal = UserGoal.new
    end

    def create
        #get user_id from current_user helper
        # user_id = current_user.id
        # goal_id = params["usergoal"]["goal_id"]
        @usergoal = UserGoal.create(usergoal_params)
        @usergoal.save
        # !!!!! MAKE SURE IT IS UNIQUE, ADD VALIDATIONS
        redirect_to user_path(@usergoal.user)
        # redirect to the user page instead, users don't need to know about usergoal page
    end

    def index
        @usergoals = UserGoal.all
    end

    def show
        @usergoal = UserGoal.find_by_id(params[:id])
    end
    
    private

        def usergoal_params
            params.require(:user_goal).permit(:user_id, :goal_id)
        end
end
