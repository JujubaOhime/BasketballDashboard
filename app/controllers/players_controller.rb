class PlayersController < ApplicationController

    #GET /players
    def index
       @q = Player.ransack(params[:q])
       @players = @q.result.order(:first_name).page(params[:page])

    end

    def show
        @player = Player.find(params[:id])
    end
end