class PlayersController < ApplicationController

    #GET /players
    def index
       @players = Player.all
       @q = Player.ransack(params[:q])
       @players = @q.result

    end

    def show
        @player = Player.find(params[:id])
    end
end