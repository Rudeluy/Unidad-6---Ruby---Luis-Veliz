nro_1 = ARGV[0].to_i
nro_2 = ARGV[1].to_i
nro_3 = ARGV[2].to_i
nro_4 = ARGV[3].to_i
if nro_1 >= nro_2 && nro_1 >= nro_3 && nro_1 >= nro_4
        puts nro_1
    elsif nro_2 >= nro_1 && nro_2 >= nro_3 && nro_2 >= nro_4
        puts nro_2
    elsif nro_3 >= nro_1 && nro_3 >= nro_2 && nro_3 >= nro_4
        puts nro_3
    else
        puts nro_4
end