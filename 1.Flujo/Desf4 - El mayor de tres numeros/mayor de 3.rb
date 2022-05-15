nro_1 = ARGV[0].to_i
nro_2 = ARGV[1].to_i
nro_3 = ARGV[2].to_i
if nro_1 > nro_2 && nro_1 > nro_3
    puts "El numero mayor es #{nro_1}"
elsif nro_2 > nro_1 && nro_2 > nro_3
    puts "El numero mayor es #{nro_2}"
else 
    puts "El numero mayor es #{nro_3}"
end