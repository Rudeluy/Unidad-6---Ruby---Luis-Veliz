#capta la cantidad de n para los patrones
n = ARGV[0].to_i
print "\n\n"

# Metodo Letra "O"
def o_top(n_o_top)
    n_o_top.times do |i|
        print "*"
    end
    print "\n"
end
def o_mid(n)
    (n - 2).times do |x|
        print "*"
        (n - 2).times do |i|
            print " "
        end
        print "*"
        print "\n"
    end
end
def o_bot(n_o_bot)
    n_o_bot.times do |i|
        print "*"
    end
    print "\n"
end
def letra_o(n)
    o_top(n)
    o_mid(n)
    o_bot(n)
end
letra_o(n)
print "\n\n"

# Metodo Letra I
def i_top(n_o_top)
    n_o_top.times do |i|
        print "*"
    end
    print "\n"
end
def i_mid(n)
    (n-2).times do |x|
        (n - 2).times do |i|
            print " "  
            if  i == (n/2-1)
                print "*"  
            end

        end
        print "\n"
    end
end
def i_bot(n_o_bot)
    n_o_bot.times do |i|
        print "*"
    end
    print "\n"
end
def letra_i(n)
    i_top(n)
    i_mid(n)
    i_bot(n)
end
letra_i(n)
print "\n\n"

# Metodo letra Z
def letra_z(n)
    fin = (n-1)
    reversa = (n-2)
    n.times do |fila|
        if fila == 0 || fila == (fin)
            n.times do |linea|
                print "*"
            end
            print "\n"
        else
            n.times do |x|
                if x == reversa
                    print "*"
                else
                    print " "
                end
            end
            reversa = reversa -1
            print "\n"
        end
    end
end
letra_z(n)
print "\n\n"

# Metodo Letra X
def letra_x(n)
    n.times do |i|
        n.times do |j|
            if i == j || (i + j) == (n-1)
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
    print "\n"
end
letra_x(n)    
print "\n\n"
#Método numero 0
def numero_0(n_veces)
    n_veces.times do |i|
        n_veces.times do |j|
            if i == 0 || j == 0 || i == j || j == n_veces-1 || i == n_veces-1
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
end
numero_0(n)
print "\n\n"

# Arbol
def arbol_top(n)
    c = "* "
    value = c
    for i in 1..n
        puts " " * (n - i) + value
        value += c * (2 - 1)
    end
end
def arbol_tronco(n)  
    (n - 1).times do |i|
        n.times do |j|
            if j == ((2*n - 1) / 2)
                print "*"
            else 
                print " "
            end
        end   
        print "\n" 
    end
end
def arbol_bot(n)
    n = n-1
    print " "
    (n*2).times do |i|
        
        if i.even?
            print "*"
        else 
            print " "
        end
        
    end
    print "\n" 
end
def arbol(n)
    arbol_top(n)  
    arbol_tronco(n)
    arbol_bot(n)
end
arbol(n)