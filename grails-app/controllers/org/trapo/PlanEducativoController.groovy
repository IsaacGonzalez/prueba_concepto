package org.trapo

import org.springframework.dao.DataIntegrityViolationException

class PlanEducativoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [planEducativoInstanceList: PlanEducativo.list(params), planEducativoInstanceTotal: PlanEducativo.count()]
    }

    def create() {
        [planEducativoInstance: new PlanEducativo(params)]
    }

    def save() {
        def planEducativoInstance = new PlanEducativo(params)
        if (!planEducativoInstance.save(flush: true)) {
            render(view: "create", model: [planEducativoInstance: planEducativoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), planEducativoInstance.id])
        redirect(action: "show", id: planEducativoInstance.id)
    }

    def show(Long id) {
        def planEducativoInstance = PlanEducativo.get(id)
        if (!planEducativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), id])
            redirect(action: "list")
            return
        }

        [planEducativoInstance: planEducativoInstance]
    }

    def edit(Long id) {
        def planEducativoInstance = PlanEducativo.get(id)
        if (!planEducativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), id])
            redirect(action: "list")
            return
        }

        [planEducativoInstance: planEducativoInstance]
    }

    def update(Long id, Long version) {
        def planEducativoInstance = PlanEducativo.get(id)
        if (!planEducativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (planEducativoInstance.version > version) {
                planEducativoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'planEducativo.label', default: 'PlanEducativo')] as Object[],
                          "Another user has updated this PlanEducativo while you were editing")
                render(view: "edit", model: [planEducativoInstance: planEducativoInstance])
                return
            }
        }

        planEducativoInstance.properties = params

        if (!planEducativoInstance.save(flush: true)) {
            render(view: "edit", model: [planEducativoInstance: planEducativoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), planEducativoInstance.id])
        redirect(action: "show", id: planEducativoInstance.id)
    }

    def delete(Long id) {
        def planEducativoInstance = PlanEducativo.get(id)
        if (!planEducativoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), id])
            redirect(action: "list")
            return
        }

        try {
            planEducativoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'planEducativo.label', default: 'PlanEducativo'), id])
            redirect(action: "show", id: id)
        }
    }
}
