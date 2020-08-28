require_relative 'components'

def build
    url_b = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&page=1&api_key='
    apiKey = 'NCj0vtWWakkcjfU9YicMKFMkfVWFf8BweWVbUmLL'
    index = head + content(url_b,apiKey) + foot
end
File.write('index.html',build)