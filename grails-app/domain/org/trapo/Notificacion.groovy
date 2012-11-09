package org.trapo

class Notificacion {
	String nombre
	String descripcion
	Date periodoInicial
	Date periodoFinal
	Administrativo planificador	

    static constraints = {
    	nombre blank :false, nullable: false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+" 
    	descripcion blank : false , matches: "[a-zA-ZÑñ0-9]+" 
    	planificador nullable: false

    	periodoInicial nullable: false, validator : {
            it >= new Date()
        }
    	periodoFinal validator: { val, obj ->
            val?.after(obj.periodoInicial)
        }
    }
}
