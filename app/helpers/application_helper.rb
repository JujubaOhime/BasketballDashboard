module ApplicationHelper

    def date_to_br(date)
        puts date.class
        ano = date.at(0..3)
        mes = date.at(5..6)
        dia = date.at(8..9)

        if mes == "01"
            mes = "Janeiro"
        elsif mes == "02"
            mes = "Fevereiro"
        elsif mes == "03"
            mes = "Março"
        elsif mes == "04"
            mes = "Abril"
        elsif mes == "05"
            mes = "Maio"
        elsif mes == "06"
            mes = "Junho"
        elsif mes == "07"
            mes = "Julho"
        elsif mes == "08"
            mes = "Agosto"
        elsif mes == "09"
            mes = "Setembro"
        elsif mes == "10"
            mes = "Outubro"
        elsif mes == "11"
            mes = "Novembro"
        elsif mes == "12"
            mes = "Dezembro"
        end

        return 'dia ' + dia + " de " + mes + " de " + ano
    end 

    def position_to_br(position)
        
        if position == "SG"
            position = "Lançador"
        elsif position == "SF"
            position = "Lateral"
        elsif position == "C"
            position = "Pivô"
        elsif position == "PF"
            position = "Libero"
        elsif position == "PG"
            position = "Armador"
        end
        return position
    end

    def team_winrate(wins, losses)
        total = wins + losses
        res =  ((wins*100)/total.to_f).round(2)
        return res
    end

    def biggest_victory(teams)
        victory = 0
        best_team = nil
        teams.each do |team|
            percentage = team_winrate(team.wins, team.losses)
            if percentage.to_i > victory
                victory = percentage
                best_team = team
            end
        end
        return best_team
    end


    def biggest_stat(players, stat)
        players.max { |a, b| (a[stat] || 0) <=> (b[stat] || 0) }
    end

    def biggest_something_stat(players, stat)
        biggest = 0.0
        best_player = nil
        players.each do |player|
            if player[stat].present? && player[stat]
                attribute = player[stat].to_f
                puts attribute
                if  attribute.to_f > biggest
                    biggest = attribute.to_f
                    best_player = player
                end
            end
        end
        return best_player
    end

end
