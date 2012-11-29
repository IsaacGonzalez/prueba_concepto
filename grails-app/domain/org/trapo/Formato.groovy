package org.trapo

class Formato {
	Usuario solicitante
	Usuario autorizador
	Date dateCreated
	boolean estaCompleto
	int estadoAvance // 0 o 1 por lo pronto

    static constraints = {
    	solicitante nullable: false
    	autorizador nullable: false
        // tiene bugs todavia
        dateCreated nullable: false, validator: {
            it >= new Date()-1
        }
    	estaCompleto nullable: false
    	estadoAvance nullable: false, inlist : [0,1]
    }
}
