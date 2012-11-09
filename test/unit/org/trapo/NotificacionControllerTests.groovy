package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(NotificacionController)
@Mock(Notificacion)
class NotificacionControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/notificacion/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.notificacionInstanceList.size() == 0
        assert model.notificacionInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.notificacionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.notificacionInstance != null
        assert view == '/notificacion/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/notificacion/show/1'
        assert controller.flash.message != null
        assert Notificacion.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/notificacion/list'

        populateValidParams(params)
        def notificacion = new Notificacion(params)

        assert notificacion.save() != null

        params.id = notificacion.id

        def model = controller.show()

        assert model.notificacionInstance == notificacion
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/notificacion/list'

        populateValidParams(params)
        def notificacion = new Notificacion(params)

        assert notificacion.save() != null

        params.id = notificacion.id

        def model = controller.edit()

        assert model.notificacionInstance == notificacion
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/notificacion/list'

        response.reset()

        populateValidParams(params)
        def notificacion = new Notificacion(params)

        assert notificacion.save() != null

        // test invalid parameters in update
        params.id = notificacion.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/notificacion/edit"
        assert model.notificacionInstance != null

        notificacion.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/notificacion/show/$notificacion.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        notificacion.clearErrors()

        populateValidParams(params)
        params.id = notificacion.id
        params.version = -1
        controller.update()

        assert view == "/notificacion/edit"
        assert model.notificacionInstance != null
        assert model.notificacionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/notificacion/list'

        response.reset()

        populateValidParams(params)
        def notificacion = new Notificacion(params)

        assert notificacion.save() != null
        assert Notificacion.count() == 1

        params.id = notificacion.id

        controller.delete()

        assert Notificacion.count() == 0
        assert Notificacion.get(notificacion.id) == null
        assert response.redirectedUrl == '/notificacion/list'
    }
}
