package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class ActividadesPtcPmtController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [actividadesPtcPmtInstanceList: ActividadesPtcPmt.list(params), actividadesPtcPmtInstanceTotal: ActividadesPtcPmt.count()]
    }

    def create() {
        [actividadesPtcPmtInstance: new ActividadesPtcPmt(params)]
    }

    def save() {
        def actividadesPtcPmtInstance = new ActividadesPtcPmt(params)
        if (!actividadesPtcPmtInstance.save(flush: true)) {
            render(view: "create", model: [actividadesPtcPmtInstance: actividadesPtcPmtInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), actividadesPtcPmtInstance.id])
        redirect(action: "show", id: actividadesPtcPmtInstance.id)
    }

    def show(Long id) {
        def actividadesPtcPmtInstance = ActividadesPtcPmt.get(id)
        if (!actividadesPtcPmtInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), id])
            redirect(action: "list")
            return
        }

        [actividadesPtcPmtInstance: actividadesPtcPmtInstance]
    }

    def edit(Long id) {
        def actividadesPtcPmtInstance = ActividadesPtcPmt.get(id)
        if (!actividadesPtcPmtInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), id])
            redirect(action: "list")
            return
        }

        [actividadesPtcPmtInstance: actividadesPtcPmtInstance]
    }

    def update(Long id, Long version) {
        def actividadesPtcPmtInstance = ActividadesPtcPmt.get(id)
        if (!actividadesPtcPmtInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (actividadesPtcPmtInstance.version > version) {
                actividadesPtcPmtInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt')] as Object[],
                          "Another user has updated this ActividadesPtcPmt while you were editing")
                render(view: "edit", model: [actividadesPtcPmtInstance: actividadesPtcPmtInstance])
                return
            }
        }

        actividadesPtcPmtInstance.properties = params

        if (!actividadesPtcPmtInstance.save(flush: true)) {
            render(view: "edit", model: [actividadesPtcPmtInstance: actividadesPtcPmtInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), actividadesPtcPmtInstance.id])
        redirect(action: "show", id: actividadesPtcPmtInstance.id)
    }

    def delete(Long id) {
        def actividadesPtcPmtInstance = ActividadesPtcPmt.get(id)
        if (!actividadesPtcPmtInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), id])
            redirect(action: "list")
            return
        }

        try {
            actividadesPtcPmtInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'actividadesPtcPmt.label', default: 'ActividadesPtcPmt'), id])
            redirect(action: "show", id: id)
        }
    }
}
