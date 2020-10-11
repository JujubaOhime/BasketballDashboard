class TeamsController < ApplicationController
    def index
        @q = Team.ransack(params[:q])
        @teams = @q.result.order(:name).page(params[:page])
    end

    def show
        @team = Team.find(params[:id])
        @team_players = Player.all.where(team_id: @team.id)
    end


end
