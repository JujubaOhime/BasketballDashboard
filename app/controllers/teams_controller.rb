class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end

    def show
        @team = Team.find(params[:id])
        @team_players = Player.all.where(team_id: @team.id)
    end


end
