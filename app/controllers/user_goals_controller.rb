class UserGoalsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def create
        @usergoal = UserGoal.new(usergoal_params)
        @usergoal.save
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
            params.permit(:user_id, :goal_id)
        end
end
