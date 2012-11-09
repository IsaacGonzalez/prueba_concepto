package org.trapo

class Administrativo extends Usuario{
	String puesto

    static constraints = {
    	puesto nullable: false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+" 
    }

    String toString(){
    	this.nombre + " " + this.apellidos
    }
}
