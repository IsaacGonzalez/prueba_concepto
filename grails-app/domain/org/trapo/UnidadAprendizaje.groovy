package org.trapo

// es la materia
class UnidadAprendizaje {

	int clave
	String nombre
	PlanEducativo planEducativo	

    static constraints = {
    	clave nullable: false, blank:false, matches: "[0-9]+",min:1
        nombre blank : false, matches: "[a-zA-ZÑñ0-9á-úÁ-Ú ]+"    	
    	planEducativo nullable: false, blank:false
    }

    String toString(){
    	this.clave + " " + this.nombre
    }
}
