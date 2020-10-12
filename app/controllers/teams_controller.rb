class TeamsController < ApplicationController

    before_action :force_json, only: :search

    include TeamsHelper

    def index
        @q = Team.ransack(params[:q])
        @teams = @q.result.order(:name).page(params[:page])
    end

    def show
        @team = Team.find(params[:id])
        @team_players = Player.all.where(team_id: @team.id)
    end

    def comparison

    end

    def search
        q = params[:q].downcase
        @teams = Team.where("name ILIKE ?", "%#{q}%" ).limit(5)
    end

    def force_json
        request.format = :json
    end

end
