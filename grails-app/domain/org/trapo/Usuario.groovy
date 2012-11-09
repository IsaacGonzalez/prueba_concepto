package org.trapo

class Usuario {

	int numeroEmpleado
	Usuario supervisor
	String nombre
	String apellidos
	String contrasena
	// Array de formatos ???


    static constraints = {
    	numeroEmpleado unique: true, nullable: false,min:1
    	nombre nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    	apellidos nullable: false, blank:false, matches: "[a-zA-ZÑñá-úÁ-Ú ]+"
    	supervisor nullable: true
        // modificar el view
    	contrasena password: true, blank:false // falta AES
    }

    String toString(){
    	this.nombre + " " + this.apellidos
    }
}
