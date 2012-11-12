package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(AvanceContenidosTematicosController)
@Mock(AvanceContenidosTematicos)
class AvanceContenidosTematicosControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/avanceContenidosTematicos/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.avanceContenidosTematicosInstanceList.size() == 0
        assert model.avanceContenidosTematicosInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.avanceContenidosTematicosInstance != null
    }

    void testSave() {
        controller.save()

        assert model.avanceContenidosTematicosInstance != null
        assert view == '/avanceContenidosTematicos/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/avanceContenidosTematicos/show/1'
        assert controller.flash.message != null
        assert AvanceContenidosTematicos.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/avanceContenidosTematicos/list'

        populateValidParams(params)
        def avanceContenidosTematicos = new AvanceContenidosTematicos(params)

        assert avanceContenidosTematicos.save() != null

        params.id = avanceContenidosTematicos.id

        def model = controller.show()

        assert model.avanceContenidosTematicosInstance == avanceContenidosTematicos
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/avanceContenidosTematicos/list'

        populateValidParams(params)
        def avanceContenidosTematicos = new AvanceContenidosTematicos(params)

        assert avanceContenidosTematicos.save() != null

        params.id = avanceContenidosTematicos.id

        def model = controller.edit()

        assert model.avanceContenidosTematicosInstance == avanceContenidosTematicos
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/avanceContenidosTematicos/list'

        response.reset()

        populateValidParams(params)
        def avanceContenidosTematicos = new AvanceContenidosTematicos(params)

        assert avanceContenidosTematicos.save() != null

        // test invalid parameters in update
        params.id = avanceContenidosTematicos.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/avanceContenidosTematicos/edit"
        assert model.avanceContenidosTematicosInstance != null

        avanceContenidosTematicos.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/avanceContenidosTematicos/show/$avanceContenidosTematicos.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        avanceContenidosTematicos.clearErrors()

        populateValidParams(params)
        params.id = avanceContenidosTematicos.id
        params.version = -1
        controller.update()

        assert view == "/avanceContenidosTematicos/edit"
        assert model.avanceContenidosTematicosInstance != null
        assert model.avanceContenidosTematicosInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/avanceContenidosTematicos/list'

        response.reset()

        populateValidParams(params)
        def avanceContenidosTematicos = new AvanceContenidosTematicos(params)

        assert avanceContenidosTematicos.save() != null
        assert AvanceContenidosTematicos.count() == 1

        params.id = avanceContenidosTematicos.id

        controller.delete()

        assert AvanceContenidosTematicos.count() == 0
        assert AvanceContenidosTematicos.get(avanceContenidosTematicos.id) == null
        assert response.redirectedUrl == '/avanceContenidosTematicos/list'
    }
}
