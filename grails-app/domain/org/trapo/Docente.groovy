package org.trapo

class Docente extends Usuario {

	// relacion de uno a muchos
	// por que en la BD no hay arrays
	static hasMany = [listaUnidadesAprendizaje: UnidadAprendizaje]

    static constraints = {
    }

    String toString(){
    	this.nombre + " " + this.apellidos
    }
}
