package tienda


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
		matchAll()//.except(controller:'GestionAdmin', action:'login')
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
}