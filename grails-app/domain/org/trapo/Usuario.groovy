package org.trapo



class Usuario {

	int numeroEmpleado
	Usuario supervisor
	String nombre
	String apellidos	
    boolean enabled = true
    String correo
    String password
	// Array de formatos ???


    static constraints = {
        correo email: true
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
