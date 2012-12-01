
package org.trapo

class DatosUsuarioService {

  static transactional = false
  static scope = "singleton"

  def setDatos(Usuario user) {
    getSession().user = user
  }

  def getDatos() {
    getSession().user
  }

  // private HttpSession getSession() {
  //   return RequestContextHolder.currentRequestAttributes().getSession()
  // }
}