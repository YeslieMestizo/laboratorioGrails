package tienda

class SecurityInterceptor {

  boolean after() { true }

  void afterView() {
      // no-op
  }

  SecurityInterceptor() { //se sobreescribe el metodo,se pone los controladores a los que se les hace hacer algo
    /*matchAll().excludes(controller:'login', action:'login')
      .excludes(controller:'gestionCliente', action:'index')
      .excludes(controller:'registroCliente', action:'registro')
      .excludes(view:"/index")*/

      match(controller:"gestionAdmin", action:"index")
      match(controller:"gestionAdmin", action:"showDisfraz")
      match(controller:"gestionAdmin", action:"altaDisfraz")
      match(controller:"gestionAdmin", action:"editarDisfraz")
      match(controller:"gestionAdmin", action:"vistaPrevia")
      
      match(controller:"gestionAdmin", action:"showCliente")
      match(controller:"gestionAdmin", action:"altaCliente")
      match(controller:"gestionAdmin", action:"editarCliente")
      match(controller:"gestionAdmin", action:"eliminarCliente")
      
      match(controller:"gestionAdmin", action:"showAdministrador")
      match(controller:"gestionAdmin", action:"altaAdministrador")
      match(controller:"gestionAdmin", action:"editarAdministrador")
      match(controller:"gestionAdmin", action:"eliminarAdministrador")
      
      match(controller:"gestionAdmin", action:"showAlquiler")
      match(controller:"gestionAdmin", action:"detalleAlquiler")
      
      match(controller:"gestionAdmin", action:"showTipoDisfraz")
      match(controller:"gestionAdmin", action:"altaTipoDisfraz")
      match(controller:"gestionAdmin", action:"editarTipoDisfraz")
      match(controller:"gestionAdmin", action:"elimanarTipoDisfraz")
      
      match(controller:"gestionAdmin", action:"showCatalogo")
      match(controller:"gestionAdmin", action:"editarCatalogo")
      
      match(controller:"gestionCliente", action:"showCarrito")
      match(controller:"gestionCliente", action:"agregarCarrito")
      match(controller:"gestionCliente", action:"masCompras")
      
  }

  boolean before() { //si no exixte usr y el login no esta, redirecciona
        if (controllerName=='ApiDisfraz'){return true}
        if (!session.usuario && actionName != "login") { //variables implicitas: actionName
          redirect(controller: "login", action: "login")
          //redirect(view:"/index")
          return false
      }
      //si el controlador es...,si el usr que esta en la sesion tiene entre alguno de sus roles ADMIN
      //si no lo envia a otro lado

      if(controllerName=='gestionAdmin' && 
          (actionName=='showDisfraz' || actionName=='altaDisfraz' || actionName=='editarDisfraz' || actionName=='eliminarDisfraz'|| 
        actionName=='showCliente' || actionName=='altaCliente' || actionName=='editarCliente' || actionName=='eliminarCliente' ||
        actionName=='showAdministrador' || actionName=='altaAdministrador' || actionName=='editarAdministrador' || actionName=='eliminarAdministrador' ||
        actionName=='showTipoDisfraz' || actionName=='altaTipoDisfraz' || actionName=='editarTipoDisfraz' || actionName=='eliminarTipoDisfraz' ||
        actionName=='showTipoDisfraz' || actionName=='altaTipoDisfraz' || actionName=='editarTipoDisfraz' || actionName=='eliminarTipoDisfraz' ||
        actionName=='showCatalogo' || actionName=='agregarDisfrazCatalogo' || actionName=='eliminarDisfrazCatalogo' || actionName=='editarDisfrazCatalogo' ||
        actionName=='showAlquiler' || actionName=='detalleAlquiler' || actionName=='editarEstadoAlquiler' || actionName=='darBajaAlquiler' || actionName=='actualizarEstadoAlquiler'

            )) {
        if(!session.usuario.getRoles().any{it.authority=='ADMIN'}) {
            render(view: "/login/login", model: [message:'No tiene permisos de administrador'])
            return false
        }
      }
        if(controllerName=='gestionCliente' && actionName=='showCarrito' ) {
        if(!session.usuario.getRoles().any{it.authority=='CLIENTE'}) {
            
            render(view: "/login/login", model: [message:'No tiene permisos de cliente'])
            return false
        }
      }
        
        
      return true
}
}