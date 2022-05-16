ventas = {
Enero: 15000,
Febrero: 22000,
Marzo: 12000,
Abril: 17000,
Mayo: 81000,
Junio: 13000,
Julio: 21000,
Agosto: 41200,
Septiembre: 25000,
Octubre: 21500,
Noviembre: 91000,
Diciembre: 21000
}
trimestres = ["Q1","Q2","Q3","Q4"]
nueva_venta = ventas.values.each_slice(3).to_a
n = nueva_venta.length
venta_trimestral = []
n.times do |i|
    if i >= 0
    venta_trimestral.push nueva_venta[i].sum
    end
end
año = trimestres.zip(venta_trimestral).to_h
puts año