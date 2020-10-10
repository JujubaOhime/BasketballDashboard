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
            puts position
            position = "Lançador"
        elsif position == "SF"
            puts position
            position = "Lateral"
        elsif position == "C"
            puts position
            position = "Pivô"
        elsif position == "PF"
            puts position
            position = "Libero"
        elsif position == "PG"
            puts position
            position = "Armador"
        end
        return position
    end
end
