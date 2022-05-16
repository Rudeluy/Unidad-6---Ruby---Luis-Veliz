#Crear el programa que de el resultado utilizades, donde el usuario ingrese previamente los siguientes datos
# Precio
# numero de usuarios totales

#Crear Programa donde el usaurio ingrese el precio, el numero de usuarios, los gastos.  El resultado debe ser las utilidades (precio_ventas * usuarios - gastos)
puts "Ingrese el precio de Venta"
precio_venta = gets.to_f
puts "Ingrese cantidad de usuarios Totales"
usuariosT = gets.to_i
puts "Ingrese cantidad de usuarios Premium"
usuariosP = gets.to_i
puts "Ingrese cantidad de usuarios free"
usuariosG = gets.to_i
puts "Ingrese los Gastos"
gastos = gets.to_f

#ingresos de usuarios Premium
ingresosP = (precio_venta*usuariosP)*2
#ingresos de usuarios Normales
usuariosE = usuariosT-(usuariosP+usuariosG)
ingresosE = (precio_venta*usuariosE)
#ingresos de usuarios Free que no se recibio
ingresosG = (precio_venta*usuariosG)
#Suma de todos los ingresos
ingresosT = ingresosP+ingresosE

#calculo total
utilidades = (ingresosT)-gastos
if utilidades > 0
    puts "RESUMEN"
    puts "El valor de venta $ :#{precio_venta}"
    puts "Los gatos son : $ #{gastos}"
    puts "La cantidad de usuarios totales son : #{usuariosT}"
    puts "La cantidad de usuarios Premiun son : #{usuariosP} con una ingreso del $ #{ingresosP}"
    puts "La cantidad de usuarios Estandar son :#{usuariosE} con una ingreso del $ #{ingresosE}"
    puts "La cantidad de usuarios Free son : #{usuariosG} ellos no generan ingresos, en caso de recibirse se recibiría $: #{ingresosG}"
    utilidades = utilidades - (utilidades*0.35)
    puts "El total de ingresos : #{ingresosT} "
    puts "Las utilidades Totales son $ : #{utilidades} Aplicado el puestos del 35 %" 
else
    puts "RESUMEN"
    puts "El valor de venta $ :#{precio_venta}"
    puts "Los gatos son : $ #{gastos}"
    puts "La cantidad de usuarios totales son : #{usuariosT}"
    puts "La cantidad de usuarios Premiun son : #{usuariosP} con una ingreso del $ #{ingresosP}"
    puts "La cantidad de usuarios Estandar son :#{usuariosE} con una ingreso del $ #{ingresosE}"
    puts "La cantidad de usuarios Free son : #{usuariosG} ellos no generan ingresos, en caso de recibirse se recibiría $: #{ingresosG}"
    puts "Las utilidades Totales son $ : #{utilidades}" 
end