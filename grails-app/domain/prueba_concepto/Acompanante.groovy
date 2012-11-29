package org.trapo

class Acompanante {


	String matricula
	String nombre
	static belongsTo = [ comisionSalidasAcademicas:ComisionSalidasAcademicas ]


    static constraints = {
    	matricula nullable: false
    	nombre nullable: false
    }
}
