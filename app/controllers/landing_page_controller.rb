class LandingPageController < ApplicationController

    def index
        @teams = Team.all
        @players = Player.all
        @teams_stats = TeamStat.all
    end
end
