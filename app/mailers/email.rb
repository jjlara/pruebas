class Email < ActionMailer::Base
  default from: "ruby@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def micorreo(parametros)
    @nombre = parametros[:nombre]
    @email = parametros [:email]
    @asunto = parametros[:asunto]
    @descripcion = parametros [:descripcion]

    mail :to => "jlaraojeda@gmail.com", :subject =>"Mensaje nuevo - curso rails"
end

def enviar(parametros)
    @nombre = parametros[:nombre]
    @email = parametros [:email]
    @asunto = parametros[:asunto]
    @descripcion = parametros [:descripcion]

    mail :to => parametros[:email], :subject =>"Curso rails"
end

end