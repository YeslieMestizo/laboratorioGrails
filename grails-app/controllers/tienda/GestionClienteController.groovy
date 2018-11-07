package tienda
import grails.validation.ValidationException
import grails.rest.RestfulController

class GestionClienteController extends RestfulController<Cliente> {
    static responseFormats = ['xml', 'json']
    GestionClienteService gestionClienteService
    GestionAdminService gestionAdminService

    GestionClienteController(){
      super(Cliente)
    }

    def index(){
<<<<<<< HEAD
<<<<<<< HEAD
        if (request.get){
            return //render(view: 'index')
        }
        [listaCatalogo: gestionAdminService.listaCatalogo(),carrito:def lista = []]
=======
    [listaCatalogo: gestionAdminService.listaCatalogo()]
>>>>>>> a5a458c7fd774e8c3ed56c552de03fbf8d7d6fa5
=======
    [listado: gestionAdminService.listaCatalogo(),tipoList:gestionAdminService.listaTipo()]
>>>>>>> 3cd8c4b9265fb8d92f71f09182b9aaa1812cec7a
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
