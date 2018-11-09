package tienda

class UrlMappings {
GestionAdminService gestionAdminService

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
            
        }
        
        
        "/busqueda"(resources:"apiDisfraz") {
        collection {"/lista"(controller: "ApiDisfraz", action: "lista")
        }
        } 
        

        "/clientes"(resources:"cliente")
        "/administradores"(resources:"administrador")
        "/busquedaEstado"(resources:"apiDisfraces"){
        collection {"/apiDisfracesEstado"(controller: "ApiDisfraces", action: "apiDisfracesEstado")}
        }
        "/busquedaDisfraz"(resources:"apiDisfraces") {
        collection {"/apiDisfracesTalle"(controller: "ApiDisfraces", action: "apiDisfracesTalle")}
        }
        "/busquedaGenero"(resources:"apiDisfraces") {
        collection {"/apiDisfracesGenero"(controller: "ApiDisfraces", action: "apiDisfracesGenero")}}

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
}
}
