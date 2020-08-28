require_relative 'request'

def head
    "<!doctype html>
    <html lang=\"en\">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset=\"utf-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">

    <!-- Google Font -->
    <link href=\"https://fonts.googleapis.com/css?family=Raleway:400,700&display=swap\" rel=\"stylesheet\">
    <link href=\"https://fonts.googleapis.com/css2?family=Lobster&display=swap\" rel=\"stylesheet\"> 

    <!-- FontAwesome -->
    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">

    <!-- Bootstrap CSS -->
    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">
  </head>
  <body>
  
        
    <h1 class='text-center'>Nasa Api <span class=font-italic>Mars Rover Photos</span> Web Page</h1> 
    <h3 class = 'text-center'>Página creada con
    <img src='data:image/jpeg;base64,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'
    width='50px' style='display:inline-block'>
    Ruby
    </h3>
    "
end

def foot
   "
   <footer class=\"text-center text-light p-1\" style =\"background : #1c4e80\">
   <p style =\"font-family: 'Lobster', cursive; font-size: 30px;\">Boris Leighton Inostroza.</p>
   
   <a href=\"http://www.github.com/borisleightoni\"><i class=\"fab fa-github fa-3x text-white\"></i></a>
   <a href=\"
   https://cl.linkedin.com/public-profile/in/boris-leighton-inostroza-95420536?challengeId=AQFm86SDRnVk8QAAAXQ12MNDxsx2ejsvdA_gBkmbFEe5nVZsT072HqPO7yOC5I2ns4vmyMY6yi-ZrMXK7_WF3p0Mv6FvlQdAxQ&submissionId=06c674ba-a27a-2f16-66b2-16b9549a3f00
   \"><i class=\"fab fa-linkedin fa-3x ml-5 text-white\"></i></a>

   <p>Todos los derechos reservados. DesafioLatam 2020</p>
    </footer>   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>
    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\" integrity=\"sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1\" crossorigin=\"anonymous\"></script>
    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\" integrity=\"sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM\" crossorigin=\"anonymous\"></script>
  </body>
 </html>"
end

def content(x,y)
    data = request(x,y)
    cuenta_fotos(data) 

    if data.nil?
        cards = '<h3 class="text-center my-5">No hay datos disponibles</h3>
        '
    else    
        cards = '<div class="row">'


        # datos = hash1['photos'][0]
# datos.each do |k,v|
#     puts "Imagen: #{datos['img_src']}"
#     puts "Nombre: #{datos['camera']['full_name']}"
# end

        data['photos'].each do |datos|
            cards += 
         "<div class='col-md-4'>
            <div class='card'>
                <img class='card-img-top' src='#{datos['img_src']}' alt='#{datos['camera']['full_name']}'>
                <div class='card-body'>
                    <h4 class='card-title'>#{datos['camera']['full_name']}</h4>
                    <h5 class=card-text text-center>#{datos['camera']['name']}</h4>
                    <p class='card-text'>Fecha: #{datos['earth_date']}</p>
                    <p class='card-text'>ID: #{datos['id']}</p>
                    <div class='card-text p-3'>Datos del Explorador
                        <ul>
                            <li>ID: #{datos['rover']['id']}</li>
                            <li>Nombre: #{datos['rover']['name']}</li>
                            <li>Aterrizaje: #{datos['rover']['landing_date']}</li>
                            <li>Lanzamiento: #{datos['rover']['launch_date']}</li>
                            <li>Status: #{datos['rover']['status']}</li>
                        </ul>
                    </div>


                </div>
            </div>
         </div>"
        end
        cards += 
        '
        </div>
        '
    end 
    # puts '----------------------------'   
    # puts cards

end

def cuenta_fotos(datos)
    datos['photos'].each_with_index do |data,i|
        puts "Cámara: #{data['camera']['name']} indice: #{i}"
    end

    puts hashCounts = datos['photos'][1]['camera'].values.inject(Hash.new(0)) { |m, n| m[n] += 1; m } 

end


# url_b = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&camera=fhaz&'
# apiKey = 'api_key=DEMO_KEY'
# url = url_b + apiKey
# content(url)
