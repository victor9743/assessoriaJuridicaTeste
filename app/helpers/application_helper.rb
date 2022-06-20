module ApplicationHelper
    def gerarNumAtd(count, diaDb)
        # pegando o dia atual
        diaAtual = Time.new
        getDiaDb = diaDb

        diaAtual = "#{diaAtual.day}#{diaAtual.month}#{diaAtual.year}"
        getDiaDb = "#{getDiaDb.day}#{getDiaDb.month}#{getDiaDb.year}"

        if diaAtual == getDiaDb
            diaAtual = diaDb
            num = count + 1
        else
            diaAtual = Time.new
            num = 0 + 1
        end
       
        diaAtual = diaDb
        dia = diaAtual.day
        mes = diaAtual.month
        if mes < 10
            mes = "0#{mes}"
        end
        ano = diaAtual.year
        
        num_atd = num.to_s.rjust(5,'0')

        "#{ano}#{mes}#{dia}#{num_atd}"
    end
end
