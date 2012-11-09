package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class UnidadAprendizajeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [unidadAprendizajeInstanceList: UnidadAprendizaje.list(params), unidadAprendizajeInstanceTotal: UnidadAprendizaje.count()]
    }

    def create() {
        [unidadAprendizajeInstance: new UnidadAprendizaje(params)]
    }

    def save() {
        def unidadAprendizajeInstance = new UnidadAprendizaje(params)
        if (!unidadAprendizajeInstance.save(flush: true)) {
            render(view: "create", model: [unidadAprendizajeInstance: unidadAprendizajeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), unidadAprendizajeInstance.id])
        redirect(action: "show", id: unidadAprendizajeInstance.id)
    }

    def show(Long id) {
        def unidadAprendizajeInstance = UnidadAprendizaje.get(id)
        if (!unidadAprendizajeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), id])
            redirect(action: "list")
            return
        }

        [unidadAprendizajeInstance: unidadAprendizajeInstance]
    }

    def edit(Long id) {
        def unidadAprendizajeInstance = UnidadAprendizaje.get(id)
        if (!unidadAprendizajeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), id])
            redirect(action: "list")
            return
        }

        [unidadAprendizajeInstance: unidadAprendizajeInstance]
    }

    def update(Long id, Long version) {
        def unidadAprendizajeInstance = UnidadAprendizaje.get(id)
        if (!unidadAprendizajeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (unidadAprendizajeInstance.version > version) {
                unidadAprendizajeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje')] as Object[],
                          "Another user has updated this UnidadAprendizaje while you were editing")
                render(view: "edit", model: [unidadAprendizajeInstance: unidadAprendizajeInstance])
                return
            }
        }

        unidadAprendizajeInstance.properties = params

        if (!unidadAprendizajeInstance.save(flush: true)) {
            render(view: "edit", model: [unidadAprendizajeInstance: unidadAprendizajeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), unidadAprendizajeInstance.id])
        redirect(action: "show", id: unidadAprendizajeInstance.id)
    }

    def delete(Long id) {
        def unidadAprendizajeInstance = UnidadAprendizaje.get(id)
        if (!unidadAprendizajeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), id])
            redirect(action: "list")
            return
        }

        try {
            unidadAprendizajeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'unidadAprendizaje.label', default: 'UnidadAprendizaje'), id])
            redirect(action: "show", id: id)
        }
    }
}
