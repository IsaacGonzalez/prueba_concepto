package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(ExamenesOrdExtraordController)
@Mock(ExamenesOrdExtraord)
class ExamenesOrdExtraordControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/examenesOrdExtraord/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.examenesOrdExtraordInstanceList.size() == 0
        assert model.examenesOrdExtraordInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.examenesOrdExtraordInstance != null
    }

    void testSave() {
        controller.save()

        assert model.examenesOrdExtraordInstance != null
        assert view == '/examenesOrdExtraord/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/examenesOrdExtraord/show/1'
        assert controller.flash.message != null
        assert ExamenesOrdExtraord.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/examenesOrdExtraord/list'

        populateValidParams(params)
        def examenesOrdExtraord = new ExamenesOrdExtraord(params)

        assert examenesOrdExtraord.save() != null

        params.id = examenesOrdExtraord.id

        def model = controller.show()

        assert model.examenesOrdExtraordInstance == examenesOrdExtraord
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/examenesOrdExtraord/list'

        populateValidParams(params)
        def examenesOrdExtraord = new ExamenesOrdExtraord(params)

        assert examenesOrdExtraord.save() != null

        params.id = examenesOrdExtraord.id

        def model = controller.edit()

        assert model.examenesOrdExtraordInstance == examenesOrdExtraord
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/examenesOrdExtraord/list'

        response.reset()

        populateValidParams(params)
        def examenesOrdExtraord = new ExamenesOrdExtraord(params)

        assert examenesOrdExtraord.save() != null

        // test invalid parameters in update
        params.id = examenesOrdExtraord.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/examenesOrdExtraord/edit"
        assert model.examenesOrdExtraordInstance != null

        examenesOrdExtraord.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/examenesOrdExtraord/show/$examenesOrdExtraord.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        examenesOrdExtraord.clearErrors()

        populateValidParams(params)
        params.id = examenesOrdExtraord.id
        params.version = -1
        controller.update()

        assert view == "/examenesOrdExtraord/edit"
        assert model.examenesOrdExtraordInstance != null
        assert model.examenesOrdExtraordInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/examenesOrdExtraord/list'

        response.reset()

        populateValidParams(params)
        def examenesOrdExtraord = new ExamenesOrdExtraord(params)

        assert examenesOrdExtraord.save() != null
        assert ExamenesOrdExtraord.count() == 1

        params.id = examenesOrdExtraord.id

        controller.delete()

        assert ExamenesOrdExtraord.count() == 0
        assert ExamenesOrdExtraord.get(examenesOrdExtraord.id) == null
        assert response.redirectedUrl == '/examenesOrdExtraord/list'
    }
}
