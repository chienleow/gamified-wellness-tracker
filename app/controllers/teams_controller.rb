class TeamsController < ApplicationController
    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)
    end

    def show
        @team = Team.find_by_id(params[:id])
    end

    private

        def team_params
            params.require(:team).permit(:team_name)
        end
end
