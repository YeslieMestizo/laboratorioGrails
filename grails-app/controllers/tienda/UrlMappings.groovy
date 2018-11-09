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
        

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
