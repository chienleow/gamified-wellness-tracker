class UserGoalsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @usergoal = UserGoal.new
    end

    def create
        user_id = current_user.id
        goal_id = params[""]["goal_id"]
        @usergoal = UserGoal.create(user_id: user_id, goal_id: goal_id)
        #get user_id from current_user helper
        @usergoal.save
        byebug
        redirect_to user_goal_path(@usergoal)
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
