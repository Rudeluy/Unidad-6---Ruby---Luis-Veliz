# Ingresa la gravedad
gravedad = ARGV[0].to_f
# Ingresa la radio en metros
radio = ARGV[1].to_f
total = Math.sqrt(2*gravedad*radio)
puts "La Velocidad de escape es #{total}"