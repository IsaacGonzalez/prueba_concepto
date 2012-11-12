import org.trapo.Docente
import org.trapo.CoordinadorCarrera
import org.trapo.Administrativo
import org.trapo.PlanEducativo
import org.trapo.UnidadAprendizaje

class BootStrap {

    def init = { servletContext ->

    	def leopoldo = new Docente( 
			numeroEmpleado: 1,
			supervisor : null,
    		nombre : "leopoldo",
    		apellidos : "dominguez",
    		contrasena : "123456"
    	 )

    	leopoldo.save()

    	def ruelas = new Docente( 
			numeroEmpleado: 2,
			supervisor : leopoldo,
    		nombre : "adolfo",
    		apellidos : "ruelas",
    		contrasena : "123456"
    	 )

    	ruelas.save()

    	def aglay = new CoordinadorCarrera( 
			numeroEmpleado: 3,
			supervisor : null,
    		nombre : "aglay",
    		apellidos : "gonzalez",
    		contrasena : "123456"
    	 )
    	
    	aglay.save()

        def administrativo = new Administrativo(
            numeroEmpleado: 4,
            supervisor : null,
            nombre : "admin",
            apellidos : "istrativo",
            contrasena : "123456",
            puesto : "default"
        )

        administrativo.save()

        def planNuevo = new PlanEducativo(
            nombre : "plan nuevo",
            planEstudios : "2009-2",
            coordinador : aglay
        )       

        planNuevo.save()

        def matematicas = new UnidadAprendizaje(
            clave: 1120,
            nombre: "matematicas",
            planEducativo:planNuevo)

        matematicas.save()

    }

    

    def destroy = {
    }
}
