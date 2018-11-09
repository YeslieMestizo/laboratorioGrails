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
        
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

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
>>>>>>> df3574264bd979ae2abbe2844a40ec56077270bd
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
}
}
