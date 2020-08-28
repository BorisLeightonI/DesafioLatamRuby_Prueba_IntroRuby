require 'uri'
require 'net/http'
require 'openssl'
require 'json'


def request(adress1,apiKey)
    url1 = adress1+apiKey
    url = URI(url1)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = http.request(request)
    if response.code.to_i>400
        return nil
    else
        return JSON.parse(response.read_body)
    end
end

# url_b = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&'
# apiKey = 'api_key=DEMO_KEY'
# url = url_b+apiKey
# hash1 = get_data(url)
# # puts hash1['photos'][0]['camera']['full_name']
# datos = hash1['photos'][1]
# datos.each do |k,v|
#     puts "Clave: #{k} Valor:  #{datos[k]}"
# end