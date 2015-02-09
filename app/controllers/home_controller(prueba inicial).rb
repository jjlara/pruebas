class HomeController < ApplicationController
  
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
    @titulo = "Estamos en servicios"
  end

  def contacto
    if request.get?
    @titulo = "Estamos en contactos por el metodo get"
       if Array.mirar.include?(params[:nombre])
        render :text =>"si existe"
      else
        render :text =>"no existe"
      end

    
    else

    @titulo = "Estamos en contactos por el metodo post #{params[:nombre]}"
    Array.agregar(params[:nombre])
    redirect_to root_path
  end
  
end
end
