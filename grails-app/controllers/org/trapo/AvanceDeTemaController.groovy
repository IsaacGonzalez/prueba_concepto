package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class AvanceDeTemaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [avanceDeTemaInstanceList: AvanceDeTema.list(params), avanceDeTemaInstanceTotal: AvanceDeTema.count()]
    }

    def create() {
        [avanceDeTemaInstance: new AvanceDeTema(params)]
    }

    def save() {
        def avanceDeTemaInstance = new AvanceDeTema(params)
        if (!avanceDeTemaInstance.save(flush: true)) {
            render(view: "create", model: [avanceDeTemaInstance: avanceDeTemaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), avanceDeTemaInstance.id])
        redirect(action: "show", id: avanceDeTemaInstance.id)
    }

    def show(Long id) {
        def avanceDeTemaInstance = AvanceDeTema.get(id)
        if (!avanceDeTemaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), id])
            redirect(action: "list")
            return
        }

        [avanceDeTemaInstance: avanceDeTemaInstance]
    }

    def edit(Long id) {
        def avanceDeTemaInstance = AvanceDeTema.get(id)
        if (!avanceDeTemaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), id])
            redirect(action: "list")
            return
        }

        [avanceDeTemaInstance: avanceDeTemaInstance]
    }

    def update(Long id, Long version) {
        def avanceDeTemaInstance = AvanceDeTema.get(id)
        if (!avanceDeTemaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (avanceDeTemaInstance.version > version) {
                avanceDeTemaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'avanceDeTema.label', default: 'AvanceDeTema')] as Object[],
                          "Another user has updated this AvanceDeTema while you were editing")
                render(view: "edit", model: [avanceDeTemaInstance: avanceDeTemaInstance])
                return
            }
        }

        avanceDeTemaInstance.properties = params

        if (!avanceDeTemaInstance.save(flush: true)) {
            render(view: "edit", model: [avanceDeTemaInstance: avanceDeTemaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), avanceDeTemaInstance.id])
        redirect(action: "show", id: avanceDeTemaInstance.id)
    }

    def delete(Long id) {
        def avanceDeTemaInstance = AvanceDeTema.get(id)
        if (!avanceDeTemaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), id])
            redirect(action: "list")
            return
        }

        try {
            avanceDeTemaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'avanceDeTema.label', default: 'AvanceDeTema'), id])
            redirect(action: "show", id: id)
        }
    }
}
