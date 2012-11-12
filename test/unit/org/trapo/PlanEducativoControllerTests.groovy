package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(PlanEducativoController)
@Mock(PlanEducativo)
class PlanEducativoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/planEducativo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.planEducativoInstanceList.size() == 0
        assert model.planEducativoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.planEducativoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.planEducativoInstance != null
        assert view == '/planEducativo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/planEducativo/show/1'
        assert controller.flash.message != null
        assert PlanEducativo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/planEducativo/list'

        populateValidParams(params)
        def planEducativo = new PlanEducativo(params)

        assert planEducativo.save() != null

        params.id = planEducativo.id

        def model = controller.show()

        assert model.planEducativoInstance == planEducativo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/planEducativo/list'

        populateValidParams(params)
        def planEducativo = new PlanEducativo(params)

        assert planEducativo.save() != null

        params.id = planEducativo.id

        def model = controller.edit()

        assert model.planEducativoInstance == planEducativo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/planEducativo/list'

        response.reset()

        populateValidParams(params)
        def planEducativo = new PlanEducativo(params)

        assert planEducativo.save() != null

        // test invalid parameters in update
        params.id = planEducativo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/planEducativo/edit"
        assert model.planEducativoInstance != null

        planEducativo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/planEducativo/show/$planEducativo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        planEducativo.clearErrors()

        populateValidParams(params)
        params.id = planEducativo.id
        params.version = -1
        controller.update()

        assert view == "/planEducativo/edit"
        assert model.planEducativoInstance != null
        assert model.planEducativoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/planEducativo/list'

        response.reset()

        populateValidParams(params)
        def planEducativo = new PlanEducativo(params)

        assert planEducativo.save() != null
        assert PlanEducativo.count() == 1

        params.id = planEducativo.id

        controller.delete()

        assert PlanEducativo.count() == 0
        assert PlanEducativo.get(planEducativo.id) == null
        assert response.redirectedUrl == '/planEducativo/list'
    }
}
