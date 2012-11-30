package org.trapo

class Permiso extends Solicitud{

public enum TipoPermiso{
	PNS("Permiso Sin Goce De Sueldo"),
	PS("Permiso Economico"),
	LS("Licencia Con Goce De Sueldo"),
	LNS("Licencia Sin Goce Economico")

	final String value;

	TipoPermiso(String value){
		this.value = value;
	}
	String toString(){
		value;
	}

	String getKey(){
            name()
        }

    static list() {
            [PNS, PS, LNS,LS]
        }  
}
	
	TipoPermiso tipo
	Date del
	Date al
	String motivo

    static constraints = {

    	tipo(blank: false, inList:TipoPermiso.list(),minSize:1, maxSize:1)

    	del nullable: false, validator: {
            it >= new Date()-1
    	}
    	al nullable: false, validator: {
            it >= new Date()-1
		}
		estaCompleto display:false
		estadoAvance display:false
		
		motivo maxSize:2500

	}
}