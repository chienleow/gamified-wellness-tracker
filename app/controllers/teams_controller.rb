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

    # - form_tag will send the name to be searched, post it to a new url
    # - in the new url, we will rebuild the object again, what we need now is the name that was keyed in

    def search
        @search_username = User.find.filter_by_username(params[:search_username])
        byebug
    end

    get '/teams/search' => teams#search

    private
        def team_params
            params.require(:team).permit(:team_name, :search_username)
        end
end
