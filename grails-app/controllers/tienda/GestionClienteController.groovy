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

    def verCarritoCompra(){

    }
}
