data = File.open('notas.data').readlines
data.map!{|line| line.split(",")}
def nota_mas_alta(alumno)
    results = []
    alumno.each do |nota_max|
        results.push( [ nota_max[0], nota_max.map{|num|num.to_i }.max] )
    end
    return results
end
print nota_mas_alta(data)