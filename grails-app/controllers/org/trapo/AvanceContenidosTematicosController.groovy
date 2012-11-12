package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class AvanceContenidosTematicosController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [avanceContenidosTematicosInstanceList: AvanceContenidosTematicos.list(params), avanceContenidosTematicosInstanceTotal: AvanceContenidosTematicos.count()]
    }

    def create() {
        [avanceContenidosTematicosInstance: new AvanceContenidosTematicos(params)]
    }

    def save() {
        def avanceContenidosTematicosInstance = new AvanceContenidosTematicos(params)
        if (!avanceContenidosTematicosInstance.save(flush: true)) {
            render(view: "create", model: [avanceContenidosTematicosInstance: avanceContenidosTematicosInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), avanceContenidosTematicosInstance.id])
        redirect(action: "show", id: avanceContenidosTematicosInstance.id)
    }

    def show(Long id) {
        def avanceContenidosTematicosInstance = AvanceContenidosTematicos.get(id)
        if (!avanceContenidosTematicosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), id])
            redirect(action: "list")
            return
        }

        [avanceContenidosTematicosInstance: avanceContenidosTematicosInstance]
    }

    def edit(Long id) {
        def avanceContenidosTematicosInstance = AvanceContenidosTematicos.get(id)
        if (!avanceContenidosTematicosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), id])
            redirect(action: "list")
            return
        }

        [avanceContenidosTematicosInstance: avanceContenidosTematicosInstance]
    }

    def update(Long id, Long version) {
        def avanceContenidosTematicosInstance = AvanceContenidosTematicos.get(id)
        if (!avanceContenidosTematicosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (avanceContenidosTematicosInstance.version > version) {
                avanceContenidosTematicosInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos')] as Object[],
                          "Another user has updated this AvanceContenidosTematicos while you were editing")
                render(view: "edit", model: [avanceContenidosTematicosInstance: avanceContenidosTematicosInstance])
                return
            }
        }

        avanceContenidosTematicosInstance.properties = params

        if (!avanceContenidosTematicosInstance.save(flush: true)) {
            render(view: "edit", model: [avanceContenidosTematicosInstance: avanceContenidosTematicosInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), avanceContenidosTematicosInstance.id])
        redirect(action: "show", id: avanceContenidosTematicosInstance.id)
    }

    def delete(Long id) {
        def avanceContenidosTematicosInstance = AvanceContenidosTematicos.get(id)
        if (!avanceContenidosTematicosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), id])
            redirect(action: "list")
            return
        }

        try {
            avanceContenidosTematicosInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'avanceContenidosTematicos.label', default: 'AvanceContenidosTematicos'), id])
            redirect(action: "show", id: id)
        }
    }
}
