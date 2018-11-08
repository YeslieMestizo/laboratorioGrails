package tienda

<<<<<<< HEAD
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

      //match(controller:"gestionAdmin", action:"index")
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
      if (!session.usuario && actionName != "login") { //variables implicitas: actionName
          redirect(controller: "login", action: "login")
          //redirect(view:"/index")
          return false
      }
      //si el controlador es...,si el usr que esta en la sesion tiene entre alguno de sus roles ADMIN
      //si no lo envia a otro lado
      /*if(controllerName=='gestionCliente' && (actionName=='showCarrito' || actionName=='agregarCarrito' || actionName=='masCompras' || actionName=='eliminarAlquiler' )) {
        if(!session.usuario.getRoles().any{it.authority=='CLIENTE'}) {
            render(view: "/gestionCliente/index", model: [message:'No tiene permisos para la accion solicitada'])
            return false
        }
      }*/
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
      return true
}
=======

class SecurityInterceptor {
	//boolean after() { true }

	//void afterView() { }

	/*SecurityInterceptor(){
		match(controller:"GestionAdmin", action:"editarCliente")
	    match(controller:"GestionAdmin", action:"guardarAltaCliente")
	    match(controller:"GestionAdmin", action:"altaCliente")
	    match(controller:"GestionAdmin", action:"darBajaCliente")

	    match(controller:"GestionAdmin", action:"editarAdministrador")
	    match(controller:"GestionAdmin", action:"guardarAltaAdministrador")
	    match(controller:"GestionAdmin", action:"altaAdministrador")
	    match(controller:"GestionAdmin", action:"darBajaAdministrador")
	}
	    //boolean before() { true }
		boolean before() { //si no exixte usr y el login no esta, redirecciona
	    if (!session.usuario && actionName != "login") { //variables implicitas: actionName
	        	redirect(controller: "login", action: "login")
	        	return false
	    }
	      	//si el controlador es...,si el usr que esta en la sesion tiene entre alguno de sus roles ADMIN
	      	//si no lo envia a otro lado
	    if(controllerName=='GestionAdmin' && (actionName=='editarCliente' || actionName=='guardarAltaCliente' || actionName=='altaCliente' || actionName=='darBajaCliente')) {
	       	if(!session.usuario.getRoles().any{it.authority=='ADMIN'}) {
	            render(view: "/index", model: [message:'No tiene permisos para la accion solicitada'])
	            	return false
	        }
	    }
	    return true
	}*/

	/*SecurityInterceptor() {
		matchAll().except(controller:'GestionAdmin', action:'login')//intercepta la ejec antes de que se ejec todas las acciones, excepto la acción 'Login'
	}
	boolean before() {
	 	if (!session.usuario && actionName != "login") {
	 	redirect(controller: "login", action: "login")
	 	return false
		}
		return true
	}*/

	SecurityInterceptor() {
		//matchAll().except(controller:'GestionAdmin', action:'login')
		matchAll().except(controller:'GestionAdmin', action:'login')
	}
	boolean before() {
		/*if (!session.usuario && actionName != "login"){//sin sesion y no se ha logueado
			redirect(controller: "", action: "index")
		 	return false
			}
		return true
	}*/
	if (!session.usuario && actionName!="login"){//(actionName=='editarCliente' || actionName=='guardarAltaCliente' || actionName=='altaCliente' || actionName=='darBajaCliente'){}
	//if(!session.usuario="" && actionName=="login") {
            redirect (controller:'login', action:'login')
            return false
        }
        return true
    }
>>>>>>> d168a23818e80d95f96e36f939b3be7e5df9721e
}