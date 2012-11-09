package org.trapo

class PlanEducativo {


	/*
	Ejemplo
	nombre: Ingeniería en Computación
	plan de estudios: 2009-2
	*/
	String nombre
	String planEstudios
	CoordinadorCarrera coordinador


	static hasMany = [
			listaUnidadesAprendizaje: UnidadAprendizaje,
			docentes: Docente
		]

    static constraints = {
    	nombre nullable: false, blank : false, matches: "[a-zA-ZÑñ0-9á-úÁ-Ú ]+"    	
    	planEstudios nullable: false, blank:false, matches: "[0-9-]+"    	
    	coordinador nullable: false
    }
}
