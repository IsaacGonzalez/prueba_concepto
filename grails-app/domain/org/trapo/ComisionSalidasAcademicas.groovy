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
	String observacionesAdicionales
    TipoTransporte tipoDeTransporte
    boolean viaticos
    boolean peajes
    boolean gasolina
    boolean hospedaje

    String matricula
    String nombre



	
    static constraints = {

    	lugarDeEvento 	nullable: false
    	ciudad			nullable: false
    	incluirEmpleadoEnComision	nullable: false
    	motivo			nullable: false, maxSize:2500
    	asignaturaApoyada	nullable: false
    	requiereCartaPresentacion	nullable: false
    	del				nullable: false, validator: {
            it >= new Date()-1
        }
    	hasta			nullable: false, validator: {
            it >= new Date()-1
        }
    	observacionesAdicionales nullable: false, maxSize:2500
    	estaCompleto display:false
		estadoAvance display:false
        tipoDeTransporte(blank: false, inList:TipoTransporte.list(),minSize:1, maxSize:1)

        matricula maxSize:20 
        nombre maxSize: 40
    }

    public enum TipoTransporte{
    AB("Autobús"),
    MB("Microbús"),
    VA("Van"),
    OTRO("Otro"
)
    final String value;

    TipoTransporte(String value){
        this.value = value;
    }
    String toString(){
        value;
    }

    String getKey(){
            name()
        }

    static list() {
            [AB, MB, VA,OTRO]
        }  
}

}
