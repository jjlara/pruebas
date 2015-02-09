class HomeController < ApplicationController
  layout "bootstrap", :except=> :servicios
  def index
    
    @titulo = "Estamos en la pagina principal"
  end

  def quienes_somos
      @titulo = "Estamos en quines somos"
      if request.post?
        archivo = params[:archivo]
        nombre = archivo.original_filename
        directorio = "/Users/juancarloslaraojeda/Desktop/fotos/" + nombre
        File.open(directorio, "wb") { |f| f.write(archivo.read) }
      end


    
  end

  def localizacion
    @titulo = "Estamos en localizacion"
  end

def servicios
    @titulo = " Curso Ruby on Rails - Contacto"

    if request.post?
      #enviar correo electronico
    begin

    if Email.micorreo(params).deliver and Email.enviar(params).deliver
      flash.now[:noticia] = "enviado correctamente"
    end
    
    rescue
    flash.now[:noticia] = "No se ha enviado"

    end

  end

end  

  def contacto
    @titulo = "Estamos en la pagina contacto"
    
  end
  
end

