package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(AvanceDeTemaController)
@Mock(AvanceDeTema)
class AvanceDeTemaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/avanceDeTema/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.avanceDeTemaInstanceList.size() == 0
        assert model.avanceDeTemaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.avanceDeTemaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.avanceDeTemaInstance != null
        assert view == '/avanceDeTema/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/avanceDeTema/show/1'
        assert controller.flash.message != null
        assert AvanceDeTema.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/avanceDeTema/list'

        populateValidParams(params)
        def avanceDeTema = new AvanceDeTema(params)

        assert avanceDeTema.save() != null

        params.id = avanceDeTema.id

        def model = controller.show()

        assert model.avanceDeTemaInstance == avanceDeTema
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/avanceDeTema/list'

        populateValidParams(params)
        def avanceDeTema = new AvanceDeTema(params)

        assert avanceDeTema.save() != null

        params.id = avanceDeTema.id

        def model = controller.edit()

        assert model.avanceDeTemaInstance == avanceDeTema
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/avanceDeTema/list'

        response.reset()

        populateValidParams(params)
        def avanceDeTema = new AvanceDeTema(params)

        assert avanceDeTema.save() != null

        // test invalid parameters in update
        params.id = avanceDeTema.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/avanceDeTema/edit"
        assert model.avanceDeTemaInstance != null

        avanceDeTema.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/avanceDeTema/show/$avanceDeTema.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        avanceDeTema.clearErrors()

        populateValidParams(params)
        params.id = avanceDeTema.id
        params.version = -1
        controller.update()

        assert view == "/avanceDeTema/edit"
        assert model.avanceDeTemaInstance != null
        assert model.avanceDeTemaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/avanceDeTema/list'

        response.reset()

        populateValidParams(params)
        def avanceDeTema = new AvanceDeTema(params)

        assert avanceDeTema.save() != null
        assert AvanceDeTema.count() == 1

        params.id = avanceDeTema.id

        controller.delete()

        assert AvanceDeTema.count() == 0
        assert AvanceDeTema.get(avanceDeTema.id) == null
        assert response.redirectedUrl == '/avanceDeTema/list'
    }
}
