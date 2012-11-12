package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(ActividadesPtcPmtController)
@Mock(ActividadesPtcPmt)
class ActividadesPtcPmtControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/actividadesPtcPmt/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.actividadesPtcPmtInstanceList.size() == 0
        assert model.actividadesPtcPmtInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.actividadesPtcPmtInstance != null
    }

    void testSave() {
        controller.save()

        assert model.actividadesPtcPmtInstance != null
        assert view == '/actividadesPtcPmt/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/actividadesPtcPmt/show/1'
        assert controller.flash.message != null
        assert ActividadesPtcPmt.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/actividadesPtcPmt/list'

        populateValidParams(params)
        def actividadesPtcPmt = new ActividadesPtcPmt(params)

        assert actividadesPtcPmt.save() != null

        params.id = actividadesPtcPmt.id

        def model = controller.show()

        assert model.actividadesPtcPmtInstance == actividadesPtcPmt
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/actividadesPtcPmt/list'

        populateValidParams(params)
        def actividadesPtcPmt = new ActividadesPtcPmt(params)

        assert actividadesPtcPmt.save() != null

        params.id = actividadesPtcPmt.id

        def model = controller.edit()

        assert model.actividadesPtcPmtInstance == actividadesPtcPmt
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/actividadesPtcPmt/list'

        response.reset()

        populateValidParams(params)
        def actividadesPtcPmt = new ActividadesPtcPmt(params)

        assert actividadesPtcPmt.save() != null

        // test invalid parameters in update
        params.id = actividadesPtcPmt.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/actividadesPtcPmt/edit"
        assert model.actividadesPtcPmtInstance != null

        actividadesPtcPmt.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/actividadesPtcPmt/show/$actividadesPtcPmt.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        actividadesPtcPmt.clearErrors()

        populateValidParams(params)
        params.id = actividadesPtcPmt.id
        params.version = -1
        controller.update()

        assert view == "/actividadesPtcPmt/edit"
        assert model.actividadesPtcPmtInstance != null
        assert model.actividadesPtcPmtInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/actividadesPtcPmt/list'

        response.reset()

        populateValidParams(params)
        def actividadesPtcPmt = new ActividadesPtcPmt(params)

        assert actividadesPtcPmt.save() != null
        assert ActividadesPtcPmt.count() == 1

        params.id = actividadesPtcPmt.id

        controller.delete()

        assert ActividadesPtcPmt.count() == 0
        assert ActividadesPtcPmt.get(actividadesPtcPmt.id) == null
        assert response.redirectedUrl == '/actividadesPtcPmt/list'
    }
}
