package org.trapo

class Formato {
	Usuario solicitante
	Usuario autorizador
	Date fechaCreacion
	boolean estaCompleto
	int estadoAvance // 0 o 1 por lo pronto

    static constraints = {
    	solicitante nullable: false
    	autorizador nullable: false
        // tiene bugs todavia
        fechaCreacion nullable: false, validator: {
            it >= new Date()
        }
    	estaCompleto nullable: false
    	estadoAvance nullable: false, inlist : [0,1]
    }

}
