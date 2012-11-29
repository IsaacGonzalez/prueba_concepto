package org.trapo

class Permiso extends Solicitud{
Date fecha
String tipoPermiso 
Date desde
int diasPermiso
String motivo
static constraints = {
fecha blank:false, validator: { it >= new Date()-1} 
tipopermiso blank:false,inList: ["Permiso sin goce de sueldo", 
"Permiso económico", "Licencia con goce de sueldo", "Licencia sin goce de sueldo"]
desde blank:false, validator: {it >= new Date()-1}
diaspermiso blank:false 
motivo blank:false, maxSize:2500
}
}
