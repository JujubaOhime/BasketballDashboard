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
end
