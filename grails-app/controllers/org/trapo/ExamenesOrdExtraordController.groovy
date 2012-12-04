package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class ExamenesOrdExtraordController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [examenesOrdExtraordInstanceList: ExamenesOrdExtraord.list(params), examenesOrdExtraordInstanceTotal: ExamenesOrdExtraord.count()]
    }

    def create() {
        [examenesOrdExtraordInstance: new ExamenesOrdExtraord(params)]
    }

    def save() {
        def examenesOrdExtraordInstance = new ExamenesOrdExtraord(params)
        if (!examenesOrdExtraordInstance.save(flush: true)) {
            render(view: "create", model: [examenesOrdExtraordInstance: examenesOrdExtraordInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), examenesOrdExtraordInstance.id])
        redirect(action: "show", id: examenesOrdExtraordInstance.id)
    }

    def show(Long id) {
        def examenesOrdExtraordInstance = ExamenesOrdExtraord.get(id)
        if (!examenesOrdExtraordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), id])
            redirect(action: "list")
            return
        }

        [examenesOrdExtraordInstance: examenesOrdExtraordInstance]
    }

    def edit(Long id) {
        def examenesOrdExtraordInstance = ExamenesOrdExtraord.get(id)
        if (!examenesOrdExtraordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), id])
            redirect(action: "list")
            return
        }

        [examenesOrdExtraordInstance: examenesOrdExtraordInstance]
    }

    def update(Long id, Long version) {
        def examenesOrdExtraordInstance = ExamenesOrdExtraord.get(id)
        if (!examenesOrdExtraordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (examenesOrdExtraordInstance.version > version) {
                examenesOrdExtraordInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord')] as Object[],
                          "Another user has updated this ExamenesOrdExtraord while you were editing")
                render(view: "edit", model: [examenesOrdExtraordInstance: examenesOrdExtraordInstance])
                return
            }
        }

        examenesOrdExtraordInstance.properties = params

        if (!examenesOrdExtraordInstance.save(flush: true)) {
            render(view: "edit", model: [examenesOrdExtraordInstance: examenesOrdExtraordInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), examenesOrdExtraordInstance.id])
        redirect(action: "show", id: examenesOrdExtraordInstance.id)
    }

    def delete(Long id) {
        def examenesOrdExtraordInstance = ExamenesOrdExtraord.get(id)
        if (!examenesOrdExtraordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), id])
            redirect(action: "list")
            return
        }

        try {
            examenesOrdExtraordInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'examenesOrdExtraord.label', default: 'ExamenesOrdExtraord'), id])
            redirect(action: "show", id: id)
        }
    }
}
