<<<<<<< HEAD
package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(CoordinadorCarreraController)
@Mock(CoordinadorCarrera)
class CoordinadorCarreraControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/coordinadorCarrera/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.coordinadorCarreraInstanceList.size() == 0
        assert model.coordinadorCarreraInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.coordinadorCarreraInstance != null
    }

    void testSave() {
        controller.save()

        assert model.coordinadorCarreraInstance != null
        assert view == '/coordinadorCarrera/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/coordinadorCarrera/show/1'
        assert controller.flash.message != null
        assert CoordinadorCarrera.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null

        params.id = coordinadorCarrera.id

        def model = controller.show()

        assert model.coordinadorCarreraInstance == coordinadorCarrera
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null

        params.id = coordinadorCarrera.id

        def model = controller.edit()

        assert model.coordinadorCarreraInstance == coordinadorCarrera
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        response.reset()

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null

        // test invalid parameters in update
        params.id = coordinadorCarrera.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/coordinadorCarrera/edit"
        assert model.coordinadorCarreraInstance != null

        coordinadorCarrera.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/coordinadorCarrera/show/$coordinadorCarrera.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        coordinadorCarrera.clearErrors()

        populateValidParams(params)
        params.id = coordinadorCarrera.id
        params.version = -1
        controller.update()

        assert view == "/coordinadorCarrera/edit"
        assert model.coordinadorCarreraInstance != null
        assert model.coordinadorCarreraInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        response.reset()

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null
        assert CoordinadorCarrera.count() == 1

        params.id = coordinadorCarrera.id

        controller.delete()

        assert CoordinadorCarrera.count() == 0
        assert CoordinadorCarrera.get(coordinadorCarrera.id) == null
        assert response.redirectedUrl == '/coordinadorCarrera/list'
    }
}
=======
package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(CoordinadorCarreraController)
@Mock(CoordinadorCarrera)
class CoordinadorCarreraControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
        params["numeroEmpleado"] = 4
        params["supervisor"] = null
        params["nombre"] = "admin"
        params["apellidos"] = "istrativo"
        params["contrasena"] = "123456"
    }

    void testIndex() {
        controller.index()
        assert "/coordinadorCarrera/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.coordinadorCarreraInstanceList.size() == 0
        assert model.coordinadorCarreraInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.coordinadorCarreraInstance != null
    }

    void testSave() {
        controller.save()

        assert model.coordinadorCarreraInstance != null
        assert view == '/coordinadorCarrera/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/coordinadorCarrera/show/1'
        assert controller.flash.message != null
        assert CoordinadorCarrera.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null

        params.id = coordinadorCarrera.id

        def model = controller.show()

        assert model.coordinadorCarreraInstance == coordinadorCarrera
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null

        params.id = coordinadorCarrera.id

        def model = controller.edit()

        assert model.coordinadorCarreraInstance == coordinadorCarrera
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        response.reset()

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null

        // test invalid parameters in update
        params.id = coordinadorCarrera.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/coordinadorCarrera/edit"
        assert model.coordinadorCarreraInstance != null

        coordinadorCarrera.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/coordinadorCarrera/show/$coordinadorCarrera.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        coordinadorCarrera.clearErrors()

        populateValidParams(params)
        params.id = coordinadorCarrera.id
        params.version = -1
        controller.update()

        assert view == "/coordinadorCarrera/edit"
        assert model.coordinadorCarreraInstance != null
        assert model.coordinadorCarreraInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorCarrera/list'

        response.reset()

        populateValidParams(params)
        def coordinadorCarrera = new CoordinadorCarrera(params)

        assert coordinadorCarrera.save() != null
        assert CoordinadorCarrera.count() == 1

        params.id = coordinadorCarrera.id

        controller.delete()

        assert CoordinadorCarrera.count() == 0
        assert CoordinadorCarrera.get(coordinadorCarrera.id) == null
        assert response.redirectedUrl == '/coordinadorCarrera/list'
    }
}
>>>>>>> Pruebas Unitarias
