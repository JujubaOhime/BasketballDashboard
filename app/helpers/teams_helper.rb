module TeamsHelper

    def team_winrate(wins, losses)
        total = wins + losses
        res = '%02d' % ((wins*100)/total)
        return res
    end
end
