import org.trapo.Usuario
import org.trapo.Docente
import org.trapo.CoordinadorCarrera
import org.trapo.Administrativo
import org.trapo.PlanEducativo

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

        def leopoldo = new Docente (
                username    : "leopoldo",
                password    : "diagramas",
                enabled     : true,
                numeroEmpleado : numeroEmpleado,
                nombre      : "Leopoldo",
                apellidos   : "Dominguez",
                supervisor  : usuario
            )

        leopoldo.save(failOnError: true)        
        numeroEmpleado++

        // creamos los roles para nuestra aplicacion
        def userRole = new Role (authority: "ROLE_USER").save()
        def adminRole = new Role (authority: "ROLE_ADMIN").save()

        // asignamos los roles        
        if (!usuario.authorities.contains(adminRole)) {
            UserRole.create usuario, adminRole
        }



    }

    def destroy = {
    }
}
