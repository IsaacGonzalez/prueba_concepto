package org.trapo
import groovy.json.*
import grails.converters.*

class LoginController {

    def index() {
    	render(view:"login")
     }

     def logout() {
        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()        
    }
    
    def getUsuarios = {
    	def correo = params.correo
    	def password = params.password
  		def usuario = autenticarUsuarios(correo, password)    	
    	redirect(controller: "InfoUsuario", action:"index", params: usuario)
    }

    def autenticarUsuarios(correo, password) {
    def host = "192.168.1.22"
		def base="http://"+host+":8080/informacion_empleados/usuarioSignOn/autenticarUsuarios?"
  	def attrs = []
  		
  		//VERIFICA QUE SE INGRESO UN CORREO
  		if(correo){
  			attrs << "correo="+correo	
  		}else{  			
  			return
  		}

  		//VERIFICA QUE SE INGRESO UN PASSWORD
  		if(password){
  			attrs << "password="+password	
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

    		usuarios.correo=variables.correo[0] as String
    		usuarios.numeroEmpleado=variables.numeroEmpleado[0] as String

      
    	//MENSAJE DE ERROR
    	}else{
    		println("Error en la conexión intente de nuevo")
    		println(url);
    		//println(connection.response)
    	}

    	return usuarios
    }



}
