class PlayersController < ApplicationController

    #GET /players
    def index
       @q = Player.ransack(params[:q])
       @players = @q.result.page(params[:page])

    end

    def show
        @player = Player.find(params[:id])
    end
end