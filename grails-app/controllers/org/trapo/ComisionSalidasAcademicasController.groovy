package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class ComisionSalidasAcademicasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [comisionSalidasAcademicasInstanceList: ComisionSalidasAcademicas.list(params), comisionSalidasAcademicasInstanceTotal: ComisionSalidasAcademicas.count()]
    }

    def create() {
        [comisionSalidasAcademicasInstance: new ComisionSalidasAcademicas(params)]
    }

    def save() {
        def comisionSalidasAcademicasInstance = new ComisionSalidasAcademicas(params)
        if (!comisionSalidasAcademicasInstance.save(flush: true)) {
            render(view: "create", model: [comisionSalidasAcademicasInstance: comisionSalidasAcademicasInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), comisionSalidasAcademicasInstance.id])
        redirect(action: "show", id: comisionSalidasAcademicasInstance.id)
    }

    def show(Long id) {
        def comisionSalidasAcademicasInstance = ComisionSalidasAcademicas.get(id)
        if (!comisionSalidasAcademicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), id])
            redirect(action: "list")
            return
        }

        [comisionSalidasAcademicasInstance: comisionSalidasAcademicasInstance]
    }

    def edit(Long id) {
        def comisionSalidasAcademicasInstance = ComisionSalidasAcademicas.get(id)
        if (!comisionSalidasAcademicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), id])
            redirect(action: "list")
            return
        }

        [comisionSalidasAcademicasInstance: comisionSalidasAcademicasInstance]
    }

    def update(Long id, Long version) {
        def comisionSalidasAcademicasInstance = ComisionSalidasAcademicas.get(id)
        if (!comisionSalidasAcademicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (comisionSalidasAcademicasInstance.version > version) {
                comisionSalidasAcademicasInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas')] as Object[],
                          "Another user has updated this ComisionSalidasAcademicas while you were editing")
                render(view: "edit", model: [comisionSalidasAcademicasInstance: comisionSalidasAcademicasInstance])
                return
            }
        }

        comisionSalidasAcademicasInstance.properties = params

        if (!comisionSalidasAcademicasInstance.save(flush: true)) {
            render(view: "edit", model: [comisionSalidasAcademicasInstance: comisionSalidasAcademicasInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), comisionSalidasAcademicasInstance.id])
        redirect(action: "show", id: comisionSalidasAcademicasInstance.id)
    }

    def delete(Long id) {
        def comisionSalidasAcademicasInstance = ComisionSalidasAcademicas.get(id)
        if (!comisionSalidasAcademicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), id])
            redirect(action: "list")
            return
        }

        try {
            comisionSalidasAcademicasInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'comisionSalidasAcademicas.label', default: 'ComisionSalidasAcademicas'), id])
            redirect(action: "show", id: id)
        }
    }
}
