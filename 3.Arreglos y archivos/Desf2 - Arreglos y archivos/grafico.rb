data = [05,03,02,05,10]
def chart(array)
    max = array.max 
    array.each{ |n| print "|" + "**"*n + "\n" }
    print ">" + "--"*max + "\n"
    print " "
    (1..max).each{ |n| print "#{n} " }
end
chart(data)