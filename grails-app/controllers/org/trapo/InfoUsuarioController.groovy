package org.trapo
import groovy.json.*
import grails.converters.*


class InfoUsuarioController {

def index (){
	def id= params.numeroEmpleado
  session["ID_Usuario"] = id

  //LLAMA AL SERVICIO QUE REGRESA EL TIPO DE USUARIO
	def usuario= getTipoDeUsuario(id) 

  //SI ES DOCENTE LLAMA AL SERVICIO QUE OBTIENE LAS MATERIAS DE LOS DOCENTES
  if(usuario.tipo=="Docente"){
  getInformacionDocente(id)
  }

  //NOS REDIRIGE A LA VISTA CORRESPONDIENTE AL TIPO DE USUARIO
	render(view: usuario.tipo)
}

def getTipoDeUsuario(id) {
  	//SignOnService
		def host = "192.168.1.22"
		def base="http://"+host+":8080/informacion_empleados/usuario/getUsuarios?"
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
     
        //GUARDA TODAS LAS VARIABLES NECESARIAS PARA LLENAR FORMATOS  
        session["nombres"] = variables.nombres[0]
        session["apellidos"] = variables.apellidos[0]
        session["area"] = variables.area[0]
        session["facultad"] = variables.facultad[0]
 

        


    	//MENSAJE DE ERROR
    	}else{
    		println("Error en la conexión intente de nuevo")
    		println(url);
    		// println(connection.response)
    	}

    	return usuarios
    	
    }

def getInformacionDocente(id){
def host = "192.168.1.22"
def base="http://"+host+":8080/informacion_empleados/docente/getDocentes?"
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
usuarios.materias=variables.carga.nombre
usuarios.programaEducativo=variables.programaEducativo

session["materias"]=usuarios.materias
session['programaEducativo']=usuarios.programaEducativo
session['coordinadorCarrera']=variables.coordinadorCarrera

//MENSAJE DE ERROR
}else{
println("Error en la conexión intente de nuevo")
println(url);
println(connection.response)
}
return usuarios
}

//METODO EL CUAL OBTIENE LOS SUPERVISORES DE LOS EMPLEADOS
def getSupervisores(area){
def host = "192.168.1.22"
def base="http://"+host+":8080/informacion_empleados/docente/getSupervisor?"
def attrs = []

if(id){
attrs << "area="+area
}else{
return 
}

//CREA EL URL AL CUAL SE CONECTARA
def url= new URL(base+attrs.join('&'))
def connection = url.openConnection()
def supervisores = [:]
//SI LA RESPUESTA ES EXITOSA
if(connection.responseCode==200){
//PARSE DEL TEXTO RECIBIDO A JSON
def contenido = connection.content.text
def variables = new JsonSlurper().parseText( contenido )
session[""]=variables.supervisores



//MENSAJE DE ERROR
}else{
println("Error en la conexión intente de nuevo")
println(url);
println(connection.response)
}

return supervisores
}








}
