package org.trapo

import org.security.User

class Usuario extends User{

	int numeroEmpleado
	Usuario supervisor
	String nombre
	String apellidos	
    boolean enabled = true
	// Array de formatos ???


    static constraints = {
        password password: true
    	numeroEmpleado unique: true, nullable: false,min:1
    	nombre nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    	apellidos nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    	supervisor nullable: true        
    }

    String toString(){
    	this.nombre + " " + this.apellidos
    }
}
