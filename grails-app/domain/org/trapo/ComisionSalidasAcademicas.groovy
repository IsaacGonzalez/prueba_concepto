package org.trapo

class ComisionSalidasAcademicas extends Solicitud{

	String lugarDeEvento
	String ciudad
	boolean incluirEmpleadoEnComision
    String motivo
	String asignaturaApoyada
	boolean requiereCartaPresentacion
	Date del
	Date hasta
	String observaciones
	
    static constraints = {

    	lugarDeEvento 	nullable: false
    	ciudad			nullable: false
    	incluirEmpleadoEnComision	nullable: false
    	motivo			nullable: false
    	asignaturaApoyada	nullable: false
    	requiereCartaPresentacion	nullable: false
    	del				nullable: false, validator: {
            it >= new Date()-1
        }
    	hasta			nullable: false, validator: {
            it >= new Date()-1
        }
    	observaciones	nullable: false
    	estaCompleto display:false
		estadoAvance display:false
    }
}
