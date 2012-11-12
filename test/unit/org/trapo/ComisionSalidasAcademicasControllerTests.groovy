package org.trapo



import org.junit.*
import grails.test.mixin.*

@TestFor(ComisionSalidasAcademicasController)
@Mock(ComisionSalidasAcademicas)
class ComisionSalidasAcademicasControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/comisionSalidasAcademicas/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.comisionSalidasAcademicasInstanceList.size() == 0
        assert model.comisionSalidasAcademicasInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.comisionSalidasAcademicasInstance != null
    }

    void testSave() {
        controller.save()

        assert model.comisionSalidasAcademicasInstance != null
        assert view == '/comisionSalidasAcademicas/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/comisionSalidasAcademicas/show/1'
        assert controller.flash.message != null
        assert ComisionSalidasAcademicas.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/comisionSalidasAcademicas/list'

        populateValidParams(params)
        def comisionSalidasAcademicas = new ComisionSalidasAcademicas(params)

        assert comisionSalidasAcademicas.save() != null

        params.id = comisionSalidasAcademicas.id

        def model = controller.show()

        assert model.comisionSalidasAcademicasInstance == comisionSalidasAcademicas
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/comisionSalidasAcademicas/list'

        populateValidParams(params)
        def comisionSalidasAcademicas = new ComisionSalidasAcademicas(params)

        assert comisionSalidasAcademicas.save() != null

        params.id = comisionSalidasAcademicas.id

        def model = controller.edit()

        assert model.comisionSalidasAcademicasInstance == comisionSalidasAcademicas
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/comisionSalidasAcademicas/list'

        response.reset()

        populateValidParams(params)
        def comisionSalidasAcademicas = new ComisionSalidasAcademicas(params)

        assert comisionSalidasAcademicas.save() != null

        // test invalid parameters in update
        params.id = comisionSalidasAcademicas.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/comisionSalidasAcademicas/edit"
        assert model.comisionSalidasAcademicasInstance != null

        comisionSalidasAcademicas.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/comisionSalidasAcademicas/show/$comisionSalidasAcademicas.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        comisionSalidasAcademicas.clearErrors()

        populateValidParams(params)
        params.id = comisionSalidasAcademicas.id
        params.version = -1
        controller.update()

        assert view == "/comisionSalidasAcademicas/edit"
        assert model.comisionSalidasAcademicasInstance != null
        assert model.comisionSalidasAcademicasInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/comisionSalidasAcademicas/list'

        response.reset()

        populateValidParams(params)
        def comisionSalidasAcademicas = new ComisionSalidasAcademicas(params)

        assert comisionSalidasAcademicas.save() != null
        assert ComisionSalidasAcademicas.count() == 1

        params.id = comisionSalidasAcademicas.id

        controller.delete()

        assert ComisionSalidasAcademicas.count() == 0
        assert ComisionSalidasAcademicas.get(comisionSalidasAcademicas.id) == null
        assert response.redirectedUrl == '/comisionSalidasAcademicas/list'
    }
}
