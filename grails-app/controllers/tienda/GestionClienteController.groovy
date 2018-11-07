package tienda
import grails.validation.ValidationException

class GestionClienteController {
    GestionClienteService gestionClienteService
    GestionAdminService gestionAdminService
    def index(){
    [listaCatalogo: gestionAdminService.listaCatalogo()]
    }

    def verImagen = {
        def disfraz = Disfraz.get(params.id)
        response.outputStream << disfraz.imagen
        response.outputStream.flush()
    }
    
    def showCarrito(){
    }
    def agregarCarrito(Long id){
        //Items items = new Items(disfraces:gestionAdminService.unDisfraz(id))        
        session.carrito.agregarItems(gestionAdminService.unCatalogo(id))
        println id
        //session.save()        
        redirect(action:"showCarrito")
        //def list = [gestionAdminService.unDisfraz(id)]
        //render(view:"showCarrito",model:[carrito:list])
    }
    def masCompra(){
        render(view:"index",model:[listaCatalogo: gestionAdminService.listaCatalogo()])
    }
    def eliminarItems(Long id){
        carrito.eliminarItems(gestionAdminService.unCatalogo(id))
        render(view:"showCarrito")
    }   
    
}
