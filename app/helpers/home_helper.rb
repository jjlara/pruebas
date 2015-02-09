module HomeHelper

	def enlace(nombre,accion)
		link_to nombre, :action=>accion
	end

end
