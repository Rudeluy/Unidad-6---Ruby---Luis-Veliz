jugador = ARGV[0].downcase
pc = Random.rand(0..2)
if jugador != "piedra" && jugador != "papel" && jugador !="tijera"
    puts "Debes ingresar: piedra, papel o tijera"
else
    if jugador == "piedra" 
        if  pc == 1
            puts "El bots juega Papel"
            puts "has perdido contra el bots :c"
        elsif pc == 0
            puts "El bots juega piedra"
            puts "Empataste"
        elsif  pc ==2
            puts "El bots juega tijera"
            puts "Has ganado!!"
        end
    end
    if jugador =="papel"
        if pc == 0
            puts "El bots juega piedra"
            puts "Has ganado!!"
        elsif pc == 1
            puts "El bots juega papel"
            puts "Empataste"
        else
            puts "El bots juega tijera"
            puts "has perdido contra el bots :c"
        end
    end
    if jugador =="tijera"
        if pc == 0
            puts "El bots juega piedra"
            puts "has perdido contra el bots :c"
        elsif pc == 1
            puts "El bots juega papel"
            puts "Has ganado!!"
        else
            puts "El bots juega tijera"
            puts "Empataste"
        end
    end
end