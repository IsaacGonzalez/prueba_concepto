package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(CoordinadorAreaController)
@Mock(CoordinadorArea)
class CoordinadorAreaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/coordinadorArea/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.coordinadorAreaInstanceList.size() == 0
        assert model.coordinadorAreaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.coordinadorAreaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.coordinadorAreaInstance != null
        assert view == '/coordinadorArea/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/coordinadorArea/show/1'
        assert controller.flash.message != null
        assert CoordinadorArea.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorArea/list'

        populateValidParams(params)
        def coordinadorArea = new CoordinadorArea(params)

        assert coordinadorArea.save() != null

        params.id = coordinadorArea.id

        def model = controller.show()

        assert model.coordinadorAreaInstance == coordinadorArea
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorArea/list'

        populateValidParams(params)
        def coordinadorArea = new CoordinadorArea(params)

        assert coordinadorArea.save() != null

        params.id = coordinadorArea.id

        def model = controller.edit()

        assert model.coordinadorAreaInstance == coordinadorArea
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorArea/list'

        response.reset()

        populateValidParams(params)
        def coordinadorArea = new CoordinadorArea(params)

        assert coordinadorArea.save() != null

        // test invalid parameters in update
        params.id = coordinadorArea.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/coordinadorArea/edit"
        assert model.coordinadorAreaInstance != null

        coordinadorArea.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/coordinadorArea/show/$coordinadorArea.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        coordinadorArea.clearErrors()

        populateValidParams(params)
        params.id = coordinadorArea.id
        params.version = -1
        controller.update()

        assert view == "/coordinadorArea/edit"
        assert model.coordinadorAreaInstance != null
        assert model.coordinadorAreaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/coordinadorArea/list'

        response.reset()

        populateValidParams(params)
        def coordinadorArea = new CoordinadorArea(params)

        assert coordinadorArea.save() != null
        assert CoordinadorArea.count() == 1

        params.id = coordinadorArea.id

        controller.delete()

        assert CoordinadorArea.count() == 0
        assert CoordinadorArea.get(coordinadorArea.id) == null
        assert response.redirectedUrl == '/coordinadorArea/list'
    }
}
