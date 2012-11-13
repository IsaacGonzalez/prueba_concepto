package org.trapo

class AvanceContenidosTematicos extends Reporte{

	//String profesor
	//int numeroEmpleado
	Docente maestro
	UnidadAprendizaje materia
	//int clave=1
	int grupo = 1
	String cicloEscolar
	int avanceGlobal = 1
	//ArrayList <AvanceDeTema> tablaAvanceDeTema = new ArrayList<AvanceDeTema>()
	//Date fecha

	//static hasOne = [maestro:Docente]
	//static hasOne = [materia:UnidadAprendizaje]

	static hasMany = [avanceDeTema:AvanceDeTema] 


    static constraints = {
    	materia unique:true, nullable: false, blank:false
    	maestro unique:true
    	//clave nullable: false, blank:false, min:1 
    	grupo nullable: false, blank:false, min:1 
    	cicloEscolar nullable: false, blank:false, matches: "[0-9- ]+"
    	avanceGlobal nullable:false, blank:false,min:1
   }
}
