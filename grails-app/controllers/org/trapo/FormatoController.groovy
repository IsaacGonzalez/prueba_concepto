package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class FormatoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [formatoInstanceList: Formato.list(params), formatoInstanceTotal: Formato.count()]
    }

    def create() {
        [formatoInstance: new Formato(params)]
    }

    def save() {
        def formatoInstance = new Formato(params)
        if (!formatoInstance.save(flush: true)) {
            render(view: "create", model: [formatoInstance: formatoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'formato.label', default: 'Formato'), formatoInstance.id])
        redirect(action: "show", id: formatoInstance.id)
    }

    def show(Long id) {
        def formatoInstance = Formato.get(id)
        if (!formatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formato.label', default: 'Formato'), id])
            redirect(action: "list")
            return
        }

        [formatoInstance: formatoInstance]
    }

    def edit(Long id) {
        def formatoInstance = Formato.get(id)
        if (!formatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formato.label', default: 'Formato'), id])
            redirect(action: "list")
            return
        }

        [formatoInstance: formatoInstance]
    }

    def update(Long id, Long version) {
        def formatoInstance = Formato.get(id)
        if (!formatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formato.label', default: 'Formato'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (formatoInstance.version > version) {
                formatoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'formato.label', default: 'Formato')] as Object[],
                          "Another user has updated this Formato while you were editing")
                render(view: "edit", model: [formatoInstance: formatoInstance])
                return
            }
        }

        formatoInstance.properties = params

        if (!formatoInstance.save(flush: true)) {
            render(view: "edit", model: [formatoInstance: formatoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'formato.label', default: 'Formato'), formatoInstance.id])
        redirect(action: "show", id: formatoInstance.id)
    }

    def delete(Long id) {
        def formatoInstance = Formato.get(id)
        if (!formatoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'formato.label', default: 'Formato'), id])
            redirect(action: "list")
            return
        }

        try {
            formatoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'formato.label', default: 'Formato'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'formato.label', default: 'Formato'), id])
            redirect(action: "show", id: id)
        }
    }
}
