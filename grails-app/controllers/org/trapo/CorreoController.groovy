package org.trapo
import groovy.json.*
import grails.converters.*

class CorreoController {

    def index() {
    	getCorreos()
    	render(view:"correo")
     }

//METODO QUE ENVIA LOS CORREOS SOLO DEBE SER LLAMADO EN LA VISTA CORREO.GSP
def mandarCorreo = {
	sendMail {
  to params.email
  from "eriq_alejo@hotmail.com"
  subject "Notificación de fechas limite"
  body 'texto del cuerpo del mensaje'
}
}

//METODO QUE OBTIENE DEL CORREOSERVICE LA LISTA DE CORREOS DE LOS EMPLEADOS DE UNA FACULTAD
def getCorreos(){
def host = "192.168.1.9"
def base="http://"+host+":8080/informacion_empleados/usuario/getCorreos?"
def attrs = []
attrs << "facultad=Ingenieria"


//CREA EL URL AL CUAL SE CONECTARA
def url= new URL(base+attrs.join('&'))
def connection = url.openConnection()
def listaCorreos = [:]
//def listaCorreosFalsos = ["eriq_alejo@hotmail.com","josue.mxli@gmail.com"]

//SI LA RESPUESTA ES EXITOSA
if(connection.responseCode==200){

//PARSE DEL TEXTO RECIBIDO A JSON
def contenido = connection.content.text
def variables = new JsonSlurper().parseText( contenido )

listaCorreos.correo= variables.correo
session["listaDeCorreos"]=variables.correo

//MENSAJE DE ERROR
}else{
println("Error en la conexión intente de nuevo")
println(url);
// println(connection.response)
}

return listaCorreos
}



}
