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


        match(controller:"gestionAdmin")
      
        match(controller:"gestionCliente", action:"showCarrito")
        match(controller:"gestionCliente", action:"agregarCarrito")
        match(controller:"gestionCliente", action:"masCompras")
      
    }


    boolean before() { //si no exixte usr y el login no esta, redirecciona
        if (controllerName=='ApiDisfraz'){return true}
        if (!session.usuario && actionName != "login") { //variables implicitas: actionName
            redirect(controller: "login", action: "login")
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
        return true
    }
}