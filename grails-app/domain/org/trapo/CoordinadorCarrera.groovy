package org.trapo

class CoordinadorCarrera extends Docente{

	String toString(){
		this.nombre + " " + this.apellidos
	}

    static constraints = {
    	password password:true
    }
}
