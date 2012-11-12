package org.trapo

class AvanceDeTema {

	String tema
	int porcentajeDeAvance=1
	String observaciones

    static constraints = {

    	tema nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    	porcentajeDeAvance nullable: false, blank:false, matches: "[0-9]+",min:1
    	observaciones nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    }
}
