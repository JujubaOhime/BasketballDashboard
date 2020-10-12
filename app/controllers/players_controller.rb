class PlayersController < ApplicationController
    before_action :force_json, only: :search
    #GET /players
    def index
       @q = Player.ransack(params[:q])
       @players = @q.result.order(:first_name).page(params[:page])

    end

    def show
        @player = Player.find(params[:id])
    end

    def comparison
        @player1 = Player.find(params[:first_player])
        @player2 = Player.find(params[:second_player])
    end

    def search
        q = params[:q].downcase
        @players = Player.where("first_name ILIKE ? or last_name ILIKE ?", "%#{q}%", "%#{q}%").limit(5)
    end

    def force_json
        request.format = :json
    end

end