class PlayersController < ApplicationController

    #GET /players
    def index
       @players = Player.all
    end

    def show
        @player = Player.find(params[:id])
    end
end