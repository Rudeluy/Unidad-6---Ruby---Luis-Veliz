data=open('ventas_base.db').read.split(',')
def projections(ventas)
    #agrupacion de ventas en cada semestre
    semestre1 = []
    semestre2 = []
    sum_semestre1 = 0
    sum_semestre2 = 0
    n = ventas.count
    n.times do |i|
        if i < 6
            semestre1.push ventas[i].to_f
        else
            semestre2.push ventas [i].to_f
        end
    end
    semestre1.each do |i|
        sum_semestre1 += i
    end
    semestre2.each do |i|
        sum_semestre2 += i
    end
#se añade el % de ventas de las dos simulaciones solicitadas
    puts sum_semestre1
    puts sum_semestre2
    ventass1 = sum_semestre1 * 1.1   #se aplica el +10%
    ventass2 = sum_semestre2 * 1.2   #se aplica el +20%
#se da formato y se exporta
    ventas_ano = []
    ventas_ano.push ventass1.truncate(2), ventass2.truncate(2)
    File.write('resultados.data', ventas_ano)
end