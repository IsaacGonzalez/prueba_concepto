import org.trapo.Usuario
import org.trapo.Docente
import org.trapo.CoordinadorCarrera
import org.trapo.Administrativo
import org.trapo.PlanEducativo
import org.trapo.UnidadAprendizaje

import org.springsecurity.Role
import org.springsecurity.UserRole

class BootStrap {

    def init = { servletContext ->
        
        int numeroEmpleado = 1

        // creamos los usuarios
        def usuario = new Usuario (
                username    : "usuario",
                password    : "123456",
                enabled     : true,
                numeroEmpleado : numeroEmpleado,
                nombre      : "usuario",
                apellidos   : "usuario",
                supervisor  : null
            )

        usuario.save()
        numeroEmpleado++        

        def aglay = new CoordinadorCarrera (
                username    : "aglay",
                password    : "123456",
                enabled     : true,
                numeroEmpleado : numeroEmpleado,
                nombre      : "Aglay",
                apellidos   : "Gonzalez",
                supervisor  : null
            )

        aglay.save(failOnError: true)        
        numeroEmpleado++

        def leopoldo = new Docente (
                username    : "leopoldo",
                password    : "diagramas",
                enabled     : true,
                numeroEmpleado : numeroEmpleado,
                nombre      : "Leopoldo",
                apellidos   : "Dominguez",
                supervisor  : aglay
            )

        leopoldo.save(failOnError: true)        
        numeroEmpleado++

        def ruelas = new Docente (
                username    : "ruelas",
                password    : "123456",
                enabled     : true,
                numeroEmpleado : numeroEmpleado,
                nombre      : "Adolfo",
                apellidos   : "Ruelas",
                supervisor  : aglay
            )

        ruelas.save(failOnError: true)        
        numeroEmpleado++


        // creamos los roles para nuestra aplicacion
        def userRole = new Role (authority: "ROLE_USER").save()
        def adminRole = new Role (authority: "ROLE_ADMIN").save()        

        def usuarios = [leopoldo, ruelas, aglay]

        for(user in usuarios){
            // asignamos los roles        
            if (!user.authorities.contains(adminRole)) {
                UserRole.create user, adminRole
            }
        }

        // def matematicas = new UnidadAprendizaje(
        //     clave: 1120,
        //     nombre: "matematicas",
        //     planEducativo:planNuevo)

        // matematicas.save()   

    def destroy = {
    }

    }   
}