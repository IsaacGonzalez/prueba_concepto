package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class CoordinadorCarreraController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [coordinadorCarreraInstanceList: CoordinadorCarrera.list(params), coordinadorCarreraInstanceTotal: CoordinadorCarrera.count()]
    }

    def create() {
        [coordinadorCarreraInstance: new CoordinadorCarrera(params)]
    }

    def save() {
        def coordinadorCarreraInstance = new CoordinadorCarrera(params)
        if (!coordinadorCarreraInstance.save(flush: true)) {
            render(view: "create", model: [coordinadorCarreraInstance: coordinadorCarreraInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), coordinadorCarreraInstance.id])
        redirect(action: "show", id: coordinadorCarreraInstance.id)
    }

    def show(Long id) {
        def coordinadorCarreraInstance = CoordinadorCarrera.get(id)
        if (!coordinadorCarreraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), id])
            redirect(action: "list")
            return
        }

        [coordinadorCarreraInstance: coordinadorCarreraInstance]
    }

    def edit(Long id) {
        def coordinadorCarreraInstance = CoordinadorCarrera.get(id)
        if (!coordinadorCarreraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), id])
            redirect(action: "list")
            return
        }

        [coordinadorCarreraInstance: coordinadorCarreraInstance]
    }

    def update(Long id, Long version) {
        def coordinadorCarreraInstance = CoordinadorCarrera.get(id)
        if (!coordinadorCarreraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (coordinadorCarreraInstance.version > version) {
                coordinadorCarreraInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera')] as Object[],
                          "Another user has updated this CoordinadorCarrera while you were editing")
                render(view: "edit", model: [coordinadorCarreraInstance: coordinadorCarreraInstance])
                return
            }
        }

        coordinadorCarreraInstance.properties = params

        if (!coordinadorCarreraInstance.save(flush: true)) {
            render(view: "edit", model: [coordinadorCarreraInstance: coordinadorCarreraInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), coordinadorCarreraInstance.id])
        redirect(action: "show", id: coordinadorCarreraInstance.id)
    }

    def delete(Long id) {
        def coordinadorCarreraInstance = CoordinadorCarrera.get(id)
        if (!coordinadorCarreraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), id])
            redirect(action: "list")
            return
        }

        try {
            coordinadorCarreraInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'coordinadorCarrera.label', default: 'CoordinadorCarrera'), id])
            redirect(action: "show", id: id)
        }
    }
}
