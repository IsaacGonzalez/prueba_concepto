<<<<<<< HEAD
package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(FormatoController)
@Mock(Formato)
class FormatoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/formato/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.formatoInstanceList.size() == 0
        assert model.formatoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.formatoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.formatoInstance != null
        assert view == '/formato/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/formato/show/1'
        assert controller.flash.message != null
        assert Formato.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null

        params.id = formato.id

        def model = controller.show()

        assert model.formatoInstance == formato
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null

        params.id = formato.id

        def model = controller.edit()

        assert model.formatoInstance == formato
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        response.reset()

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null

        // test invalid parameters in update
        params.id = formato.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/formato/edit"
        assert model.formatoInstance != null

        formato.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/formato/show/$formato.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        formato.clearErrors()

        populateValidParams(params)
        params.id = formato.id
        params.version = -1
        controller.update()

        assert view == "/formato/edit"
        assert model.formatoInstance != null
        assert model.formatoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        response.reset()

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null
        assert Formato.count() == 1

        params.id = formato.id

        controller.delete()

        assert Formato.count() == 0
        assert Formato.get(formato.id) == null
        assert response.redirectedUrl == '/formato/list'
    }
}
=======
package org.trapo

import org.trapo.Docente
import org.trapo.Usuario
import org.junit.*
import grails.test.mixin.*

@TestFor(FormatoController)
@Mock(Formato)
class FormatoControllerTests {       

    def populateValidParams(params) {

        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
       // params["solicitante"] = leopoldo
        //params["autorizador"] = ruelas
        //params["fechaCreacion"] = fecha
        //params["estaCompleto"] = true
        //params["estadoAvance"] = 0
    }

    void testIndex() {
        controller.index()
        assert "/formato/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.formatoInstanceList.size() == 0
        assert model.formatoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.formatoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.formatoInstance != null
        assert view == '/formato/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/formato/show/1'
        assert controller.flash.message != null
        assert Formato.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null

        params.id = formato.id

        def model = controller.show()

        assert model.formatoInstance == formato
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null

        params.id = formato.id

        def model = controller.edit()

        assert model.formatoInstance == formato
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        response.reset()

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null

        // test invalid parameters in update
        params.id = formato.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/formato/edit"
        assert model.formatoInstance != null

        formato.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/formato/show/$formato.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        formato.clearErrors()

        populateValidParams(params)
        params.id = formato.id
        params.version = -1
        controller.update()

        assert view == "/formato/edit"
        assert model.formatoInstance != null
        assert model.formatoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/formato/list'

        response.reset()

        populateValidParams(params)
        def formato = new Formato(params)

        assert formato.save() != null
        assert Formato.count() == 1

        params.id = formato.id

        controller.delete()

        assert Formato.count() == 0
        assert Formato.get(formato.id) == null
        assert response.redirectedUrl == '/formato/list'
    }
}
>>>>>>> Pruebas Unitarias
