package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(UnidadAprendizajeController)
@Mock(UnidadAprendizaje)
class UnidadAprendizajeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/unidadAprendizaje/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.unidadAprendizajeInstanceList.size() == 0
        assert model.unidadAprendizajeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.unidadAprendizajeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.unidadAprendizajeInstance != null
        assert view == '/unidadAprendizaje/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/unidadAprendizaje/show/1'
        assert controller.flash.message != null
        assert UnidadAprendizaje.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/unidadAprendizaje/list'

        populateValidParams(params)
        def unidadAprendizaje = new UnidadAprendizaje(params)

        assert unidadAprendizaje.save() != null

        params.id = unidadAprendizaje.id

        def model = controller.show()

        assert model.unidadAprendizajeInstance == unidadAprendizaje
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/unidadAprendizaje/list'

        populateValidParams(params)
        def unidadAprendizaje = new UnidadAprendizaje(params)

        assert unidadAprendizaje.save() != null

        params.id = unidadAprendizaje.id

        def model = controller.edit()

        assert model.unidadAprendizajeInstance == unidadAprendizaje
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/unidadAprendizaje/list'

        response.reset()

        populateValidParams(params)
        def unidadAprendizaje = new UnidadAprendizaje(params)

        assert unidadAprendizaje.save() != null

        // test invalid parameters in update
        params.id = unidadAprendizaje.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/unidadAprendizaje/edit"
        assert model.unidadAprendizajeInstance != null

        unidadAprendizaje.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/unidadAprendizaje/show/$unidadAprendizaje.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        unidadAprendizaje.clearErrors()

        populateValidParams(params)
        params.id = unidadAprendizaje.id
        params.version = -1
        controller.update()

        assert view == "/unidadAprendizaje/edit"
        assert model.unidadAprendizajeInstance != null
        assert model.unidadAprendizajeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/unidadAprendizaje/list'

        response.reset()

        populateValidParams(params)
        def unidadAprendizaje = new UnidadAprendizaje(params)

        assert unidadAprendizaje.save() != null
        assert UnidadAprendizaje.count() == 1

        params.id = unidadAprendizaje.id

        controller.delete()

        assert UnidadAprendizaje.count() == 0
        assert UnidadAprendizaje.get(unidadAprendizaje.id) == null
        assert response.redirectedUrl == '/unidadAprendizaje/list'
    }
}
