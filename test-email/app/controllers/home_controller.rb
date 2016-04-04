class HomeController < ApplicationController
	def index
	end

	def enviar_correo
		@asunto = params[:asunto]
		@contenido = params[:contenido]

		ContactMailer.contactame(@asunto, @contenido).deliver_now!# El simbolo ! lo coloco por si hay un error me lo indique
		redirect_to root_path
	end

end

