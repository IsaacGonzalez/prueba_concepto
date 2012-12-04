package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class CoordinadorAreaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [coordinadorAreaInstanceList: CoordinadorArea.list(params), coordinadorAreaInstanceTotal: CoordinadorArea.count()]
    }

    def create() {
        [coordinadorAreaInstance: new CoordinadorArea(params)]
    }

    def save() {
        def coordinadorAreaInstance = new CoordinadorArea(params)
        if (!coordinadorAreaInstance.save(flush: true)) {
            render(view: "create", model: [coordinadorAreaInstance: coordinadorAreaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), coordinadorAreaInstance.id])
        redirect(action: "show", id: coordinadorAreaInstance.id)
    }

    def show(Long id) {
        def coordinadorAreaInstance = CoordinadorArea.get(id)
        if (!coordinadorAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), id])
            redirect(action: "list")
            return
        }

        [coordinadorAreaInstance: coordinadorAreaInstance]
    }

    def edit(Long id) {
        def coordinadorAreaInstance = CoordinadorArea.get(id)
        if (!coordinadorAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), id])
            redirect(action: "list")
            return
        }

        [coordinadorAreaInstance: coordinadorAreaInstance]
    }

    def update(Long id, Long version) {
        def coordinadorAreaInstance = CoordinadorArea.get(id)
        if (!coordinadorAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (coordinadorAreaInstance.version > version) {
                coordinadorAreaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'coordinadorArea.label', default: 'CoordinadorArea')] as Object[],
                          "Another user has updated this CoordinadorArea while you were editing")
                render(view: "edit", model: [coordinadorAreaInstance: coordinadorAreaInstance])
                return
            }
        }

        coordinadorAreaInstance.properties = params

        if (!coordinadorAreaInstance.save(flush: true)) {
            render(view: "edit", model: [coordinadorAreaInstance: coordinadorAreaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), coordinadorAreaInstance.id])
        redirect(action: "show", id: coordinadorAreaInstance.id)
    }

    def delete(Long id) {
        def coordinadorAreaInstance = CoordinadorArea.get(id)
        if (!coordinadorAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), id])
            redirect(action: "list")
            return
        }

        try {
            coordinadorAreaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'coordinadorArea.label', default: 'CoordinadorArea'), id])
            redirect(action: "show", id: id)
        }
    }
}
