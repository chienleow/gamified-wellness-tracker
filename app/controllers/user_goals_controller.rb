class UserGoalsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def create
        @usergoal = UserGoal.new
        @usergoal.save
        # set user.id to usergoal.user_id
        # set goal.id to usergoal.goal_id
        redirect_to goals_path
    end
end
