package org.trapo
import groovy.json.*
import grails.converters.*


class InfoUsuarioController {

def index (){
	def id= params.numeroEmpleado
  def nombre = params.nombre
	def tipo= getTipoDeUsuario(id)

  session["ID_Usuario"] = id
  println session["ID_Usuario"]
	render(view: tipo.tipo)
}


 def getTipoDeUsuario(id) {
  	//SignOnService
		def host = "192.168.1.9"
		def base="http://"+host+":8080/informacion_empleados/usuario/getCategoria?"
  		def attrs = []
  		
  		
  		if(id){
  			attrs << "numeroEmpleado="+id
  		}else{
  			return 
  		}

  		//CREA EL URL AL CUAL SE CONECTARA
  		def url= new URL(base+attrs.join('&'))
  		def connection = url.openConnection()
  		def usuarios = [:]

  		//SI LA RESPUESTA ES EXITOSA
		if(connection.responseCode==200){
			//PARSE DEL TEXTO RECIBIDO A JSON
    		def contenido = connection.content.text
    		def variables = new JsonSlurper().parseText( contenido )
    		usuarios.tipo=variables.tipo[0] as String
    		
    	//MENSAJE DE ERROR
    	}else{
    		println("Error en la conexión intente de nuevo")
    		println(url);
    		// println(connection.response)
    	}

    	return usuarios
    	
    }


}
