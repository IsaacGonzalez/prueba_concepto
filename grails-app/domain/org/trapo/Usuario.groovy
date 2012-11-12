package org.trapo

import org.springsecurity.User

class Usuario extends User{

	int numeroEmpleado
	Usuario supervisor
	String nombre
	String apellidos
    boolean enabled = true    
	// static hasMany = [formatos: Formato] ???


    static constraints = {
    	numeroEmpleado unique: true, nullable: false, min:1
    	nombre nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    	apellidos nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    	supervisor nullable: true    	
    }

    String toString(){
    	this.nombre + " " + this.apellidos
    }
}
