class TeamsController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)
    end

    def show
        @team = Team.find_by_id(params[:id])
    end

    def index
        @teams = Team.all
    end

    def search
        @search_username = params[:search_username]
        @found_username = User.all.filter_by_username(@search_username)
        byebug
    end

    private
        def team_params
            params.require(:team).permit(:team_name, :search_username)
        end
end
