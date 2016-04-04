class ContactMailer < ApplicationMailer
	def contactame(asunto, contenido)
		@asunto = asunto
		@contenido = contenido
		mail(to: "develionlab@gmail.com", subject: @asunto)
		
	end
end
