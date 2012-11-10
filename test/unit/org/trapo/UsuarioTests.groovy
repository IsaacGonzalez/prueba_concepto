package org.trapo



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Usuario)
class UsuarioTests {

    void crearUsuario(){
    	def usuario = new Usuario (
                username    : "usuario",
                password    : "123456",
                enabled     : true,
                numeroEmpleado : 1,
                nombre      : "usuario",
                apellidos   : "usuario",
                supervisor  : null
            )
		

        assertEquals 1, usuario.numeroEmpleado
    }
}
