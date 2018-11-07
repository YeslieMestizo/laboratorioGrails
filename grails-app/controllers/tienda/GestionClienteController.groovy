package tienda
import grails.validation.ValidationException

class GestionClienteController {
    GestionClienteService gestionClienteService
    GestionAdminService gestionAdminService
    def index(){
        if (request.get){
            return //render(view: 'index')
        }
        [listaCatalogo: gestionAdminService.listaCatalogo(),carrito:def lista = []]
    }
    
    def verImagen = {
        def disfraz = Disfraz.get(params.id)
        response.outputStream << disfraz.imagen
        response.outputStream.flush()
    }
    
    def showCarrito(){
    }
    def agregarCarrito(Long id){
        def lista = [gestionAdminService.unCatalogo(id)]
        render(view:"showCarrito",model:[carrito:lista])
    }
    def masCompra(){
        render(view:"index",model:[listaCatalogo: gestionAdminService.listaCatalogo()])
    }
    
    
    
}
