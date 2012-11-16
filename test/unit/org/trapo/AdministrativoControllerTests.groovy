<<<<<<< HEAD
package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(AdministrativoController)
@Mock(Administrativo)
class AdministrativoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/administrativo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.administrativoInstanceList.size() == 0
        assert model.administrativoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.administrativoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.administrativoInstance != null
        assert view == '/administrativo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/administrativo/show/1'
        assert controller.flash.message != null
        assert Administrativo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null

        params.id = administrativo.id

        def model = controller.show()

        assert model.administrativoInstance == administrativo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null

        params.id = administrativo.id

        def model = controller.edit()

        assert model.administrativoInstance == administrativo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        response.reset()

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null

        // test invalid parameters in update
        params.id = administrativo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/administrativo/edit"
        assert model.administrativoInstance != null

        administrativo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/administrativo/show/$administrativo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        administrativo.clearErrors()

        populateValidParams(params)
        params.id = administrativo.id
        params.version = -1
        controller.update()

        assert view == "/administrativo/edit"
        assert model.administrativoInstance != null
        assert model.administrativoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        response.reset()

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null
        assert Administrativo.count() == 1

        params.id = administrativo.id

        controller.delete()

        assert Administrativo.count() == 0
        assert Administrativo.get(administrativo.id) == null
        assert response.redirectedUrl == '/administrativo/list'
    }
}
=======
package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(AdministrativoController)
@Mock(Administrativo)
class AdministrativoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
        params["numeroEmpleado"] = 4
        params["supervisor"] = null
        params["nombre"] = "admin"
        params["apellidos"] = "istrativo"
        params["contrasena"] = "123456"
        params["puesto"] = "default"
    }

    void testIndex() {
        controller.index()
        assert "/administrativo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.administrativoInstanceList.size() == 0
        assert model.administrativoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.administrativoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.administrativoInstance != null
        assert view == '/administrativo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/administrativo/show/1'
        assert controller.flash.message != null
        assert Administrativo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null

        params.id = administrativo.id

        def model = controller.show()

        assert model.administrativoInstance == administrativo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null

        params.id = administrativo.id

        def model = controller.edit()

        assert model.administrativoInstance == administrativo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        response.reset()

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null

        // test invalid parameters in update
        params.id = administrativo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/administrativo/edit"
        assert model.administrativoInstance != null

        administrativo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/administrativo/show/$administrativo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        administrativo.clearErrors()

        populateValidParams(params)
        params.id = administrativo.id
        params.version = -1
        controller.update()

        assert view == "/administrativo/edit"
        assert model.administrativoInstance != null
        assert model.administrativoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/administrativo/list'

        response.reset()

        populateValidParams(params)
        def administrativo = new Administrativo(params)

        assert administrativo.save() != null
        assert Administrativo.count() == 1

        params.id = administrativo.id

        controller.delete()

        assert Administrativo.count() == 0
        assert Administrativo.get(administrativo.id) == null
        assert response.redirectedUrl == '/administrativo/list'
    }
}
>>>>>>> Pruebas Unitarias
