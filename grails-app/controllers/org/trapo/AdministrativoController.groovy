package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class AdministrativoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [administrativoInstanceList: Administrativo.list(params), administrativoInstanceTotal: Administrativo.count()]
    }

    def create() {
        [administrativoInstance: new Administrativo(params)]
    }

    def save() {
        def administrativoInstance = new Administrativo(params)
        if (!administrativoInstance.save(flush: true)) {
            render(view: "create", model: [administrativoInstance: administrativoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), administrativoInstance.id])
        redirect(action: "show", id: administrativoInstance.id)
    }

    def show(Long id) {
        def administrativoInstance = Administrativo.get(id)
        if (!administrativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), id])
            redirect(action: "list")
            return
        }

        [administrativoInstance: administrativoInstance]
    }

    def edit(Long id) {
        def administrativoInstance = Administrativo.get(id)
        if (!administrativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), id])
            redirect(action: "list")
            return
        }

        [administrativoInstance: administrativoInstance]
    }

    def update(Long id, Long version) {
        def administrativoInstance = Administrativo.get(id)
        if (!administrativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (administrativoInstance.version > version) {
                administrativoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'administrativo.label', default: 'Administrativo')] as Object[],
                          "Another user has updated this Administrativo while you were editing")
                render(view: "edit", model: [administrativoInstance: administrativoInstance])
                return
            }
        }

        administrativoInstance.properties = params

        if (!administrativoInstance.save(flush: true)) {
            render(view: "edit", model: [administrativoInstance: administrativoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), administrativoInstance.id])
        redirect(action: "show", id: administrativoInstance.id)
    }

    def delete(Long id) {
        def administrativoInstance = Administrativo.get(id)
        if (!administrativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), id])
            redirect(action: "list")
            return
        }

        try {
            administrativoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'administrativo.label', default: 'Administrativo'), id])
            redirect(action: "show", id: id)
        }
    }
}
