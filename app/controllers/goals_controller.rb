class GoalsController < ApplicationController
    before_action :redirect_if_not_logged_in

    def new
        @goal = Goal.new
    end

    def create
        @goal = Goal.new(goal_params)
        @goal.save
    end

    def show
        @goal = Goal.find_by_id(params[:id])
    end

    def index
        @goals = Goal.all
        @usergoal = UserGoal.new
    end

    private

        def goal_params
            params.require(:goal).permit(:category, :description)
        end
end
