data = File.open('notas.data').readlines
data.map!{|line| line.split(",")}
def nota_mas_alta(alumno)
    "La nota más alta de #{alumno[0]} es #{alumno.map{|x| x.to_i}.max}"
end
print nota_mas_alta(data[0])