package tienda
import grails.validation.ValidationException

class GestionClienteController {
    GestionClienteService gestionClienteService
    GestionAdminService gestionAdminService
    def index(){
    [listado: gestionAdminService.listaCatalogo(),tipoList:gestionAdminService.listaTipo()]
    }
    def verImagen = {
        def disfraz = Disfraz.get(params.id)
        response.outputStream << disfraz.imagen
        response.outputStream.flush()
    }    
    def showCarrito(){
    }
    def agregarCarrito(Long id){   
        println id
        println gestionAdminService.unCatalogo(new Long(id))
        session.carrito.addToItems(gestionAdminService.unCatalogo(id))
        println session.carrito 
        render(view:"showCarrito")
    }
    def masCompra(){
        render(view:"index",model:[listado: gestionAdminService.listaCatalogo()])
    }
    def eliminarItems(Long id){
        carrito.eliminarItems(gestionAdminService.unCatalogo(id))
        render(view:"showCarrito")
    }   
    def guardarAlquiler(){
        def alquiler = new Alquiler(fechaEntrega:params.fechaEntrega,fechaDevolucion:params.fechaDevolucion,precio:session.carrito.total(),estado:"pendiente",cliente:session.usuario)
        println alquiler.fechaEntrega
        
        if(alquiler.save(flush:true)){
            println " se guardo"
            for(catalogo in session.carrito.items ){
                def cat = Catalogo.get(catalogo.id)
                cat.cantidad = cat.cantidad-1
                cat.save(flush:true)
                alquiler.addToItems(cat.disfraz)                
        }
        session.carrito.items.clear()
        redirect(action:"index")
        }else{    
        redirect(action:"showCarrito")
        }
    }
    
    // barra de busqueda
    def busquedaAlquiler(String campo){
        if(campo=="F"){
            render(view:"index",model:[listado: gestionClienteService.buscarDisfrazPorGenero(campo),tipoList: gestionAdminService.listaTipo()])
        }else{
            if(campo=="Mas"){
                render(view:"index",model:[listado: gestionClienteService.buscarDisfrazPorGenero('M'),tipoList: gestionAdminService.listaTipo()])
            }else{
                if(campo=="XS" || campo=="S" || campo=="M" ||campo=="L" || campo=="XL" ||campo=="XXL"){
                    render(view:"index",model:[listado: gestionClienteService.buscarDisfrazPorTalle(campo),tipoList: gestionAdminService.listaTipo()])
                }else{
                    if(params.descripcion != null){
                        render(view:"index",model:[listado: gestionClienteService.buscarDisfrazPorDescripcion(params.descripcion),tipoList: gestionAdminService.listaTipo()])
                    }else{
                        render(view:"index",model:[listado: gestionClienteService.buscarDisfrazPorTipo(campo),tipoList: gestionAdminService.listaTipo()])
                    }

                }
            }

        }
    }
    
}
