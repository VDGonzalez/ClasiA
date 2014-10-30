class HomeController < ApplicationController
	def index
		@agencias = Agencia.all
		@hash = Gmaps4rails.build_markers(@agencias) do |agencia, marker|
			marker.lat agencia.latitud
			marker.lng agencia.longitud
			marker.title agencia.nombre
			marker.infowindow "<p><big><strong>#{agencia.nombre}</strong></big></p>
							   <span>
							     <p>#{agencia.direccion}</p>
								 <p><a href='mailto:#{agencia.email}'>#{agencia.email}</a></p>
								 <p><a href='http://#{agencia.web}' target='_blank'>#{agencia.web}</a></p>
								 <p>#{agencia.telefono}</p>
								 <p><small>Latitud</small>: <strong>#{agencia.latitud}</strong> / <small>Longitud</small>: <strong>#{agencia.longitud}</strong></p>
							   </span>"
			# marker.picture({
			# 	"url" => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
			# 	"width" => 32,
			# 	"height" => 32})
		end
	end
end