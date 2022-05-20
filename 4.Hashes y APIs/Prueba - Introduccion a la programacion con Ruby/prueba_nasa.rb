require 'net/http'
require 'json'
def request(address, api_key)
    url = URI(address+api_key)
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    JSON.parse response.read_body
end
def build_web_page(contenido)
    photos = contenido["photos"]
    html =
    "<html>\n
    <title>Nasa</title>\n
    <head>\n
    </head>\n
    <body>\n
    \t<ul>\n"
    photos.map {|x| html += "\t\t<li><img src=#{x['img_src']} width='200px'></li>\n \t"}

    html +=
    "\t\t</ul>\n
    </body>\n
    </html>"
    File.write('NASA_photos.html', html)
end
def photos_count(contenido)
    photos_array = contenido["photos"]
    final_array = []
    photos_array.each do |i|
        final_array << i['camera']['name']
    end
    final_hash = final_array.group_by {|x| x}
    final_hash.each do |k,v|
        final_hash[k] = v.count
    end
    final_hash
end
api_key = ARGV[0]
#se crea la pagina solo con los registros hasta la pagina 1 ( que trae 25 registros)
contenido = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000", "&api_key=#{api_key}&page=1")
build_web_page(contenido)
#se Consulta los registros completos hasta 1000 resultados
contenido2 = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000", "&api_key=#{api_key}")
print photos_count(contenido2)