class UserGoalsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def create
        @usergoal = UserGoal.new(usergoal_params)
        @usergoal.save
        # set user.id to usergoal.user_id
        # set goal.id to usergoal.goal_id
        redirect_to usergoal_path(@usergoal)
    end

    def index
        @usergoals = UserGoal.all
    end
    
    private

        def usergoal_params
            params.require(:usergoal).permit(:user_id, :goal_id, :complete, :notes)
        end
end
