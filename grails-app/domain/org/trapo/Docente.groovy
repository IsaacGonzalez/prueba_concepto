package org.trapo

class Docente extends Usuario {

	// relacion de uno a muchos
	// por que en la BD no hay arrays
	static hasMany = [listaUnidadesAprendizaje: UnidadAprendizaje]

    static constraints = {
    	listaUnidadesAprendizaje nullable: true
    }

    String toString(){
    	this.nombre + " " + this.apellidos
    }
}
