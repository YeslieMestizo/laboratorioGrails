package tienda
import grails.validation.ValidationException

class GestionAdminController {
    GestionAdminService gestionAdminService
    def index() {
       [nroCliente:gestionAdminService.cantidadCliente(),nroAlquiler:gestionAdminService.cantidadAlquiler(),nroDisfraz:gestionAdminService.cantidadDisfraz()]
    }

    //gestion disfraz
    def showDisfraz(){
        [listado: gestionAdminService.listaDisfraz(),tipoList: gestionAdminService.listaTipo()]
    }
    def altaDisfraz(){
        [disfraz: new Disfraz(), tipoList: gestionAdminService.listaTipo()]
    }
    def guardarAltaDisfraz() {
        def file = request.getFile('myFile')
        def disfraz = new Disfraz(descripcion:params.descripcion,talle:params.talle,genero:params.genero,tipo:params.tipo,imagen:file,estado:"activo").save(flush:true)
        disfraz.save(flush:true)
        if (disfraz.hasErrors()) {
            disfraz.errors.allErrors.each {
                println it
            }
        }
        redirect action:"vistaPrevia", params: [id: disfraz.id]
    }

    def vistaPrevia(Long id){
        [disfraz: gestionAdminService.unDisfraz(new Long(params.id))]
    }

    def verImagen = {
        def disfraz = Disfraz.get(params.id)
        response.outputStream << disfraz.imagen
        response.outputStream.flush()
    }

    def darBajaDisfraz() {
        gestionAdminService.eliminarDisfraz(new Long(params.id))
        redirect(action:"showDisfraz")
    }
    def editarDisfraz(Long id){
        [disfraz: gestionAdminService.unDisfraz(id),tipoList: gestionAdminService.listaTipo()]
    }

    def actualizarDisfraz(Long id){
        def file = request.getFile('myFile')
        def disfraz = Disfraz.get(params.id)
        disfraz.properties = [descripcion:params.descripcion,talle:params.talle,genero:params.genero,tipo:params.tipo,imagen:file]
        if (disfraz!=null){
            disfraz.save(flush:true)
            redirect(action:"showDisfraz")
        }
        else{
            render(action:"editarDisfraz",model:[disfraz: gestionAdminService.unDisfraz(params.id),tipoList: gestionAdminService.listaTipo()])
        }
    }
    //Gestion de cliente
    def showCliente(){
        [listado: gestionAdminService.listaCliente()]
    }
    def altaCliente(){
        [cliente: new Cliente()]
    }
    def guardarAltaCliente( ) {
        gestionAdminService.altaCliente(params)
        redirect(action:"showCliente")
    }
    def darBajaCliente() {
        gestionAdminService.eliminarCliente(new Long(params.id))
        redirect(action:"showCliente")
    }
    def editarCliente(){
        [cliente: gestionAdminService.unCliente(new Long(params.id))]
    }
    def actualizarCliente(Long id){
        def cliente = Cliente.get(params.id)
        cliente.properties = params
        if (cliente!=null){
            cliente.save(flush:true)
            redirect(action:"showCliente")


        }     
    }
    //Gestion de Administrador
    def showAdministrador(){
        [listado: gestionAdminService.listaAdministrador()]
    }
    def altaAdministrador(){
        [administrador: new Administrador()]
    }
    def guardarAltaAdministrador() {
        gestionAdminService.altaAdministrador(params)
        redirect(action:"showAdministrador")
    }
    def darBajaAdministrador() {
        gestionAdminService.eliminarAdministrador(new Long(params.id))
        redirect(action:"showAdministrador")
    }
    def editarAdministrador(){
        [administrador: gestionAdminService.unAdministrador(new Long(params.id))]
    }
    def actualizarAdministrador(Long id){
        def administrador = Administrador.get(params.id)
        administrador.properties = params
        if (administrador!=null){

            administrador.save(flush:true)
            redirect(action:"showAdministrador")
        }
    }
    //Gestion de tipoDisfraz
    def showTipoDisfraz(){
        [listado: gestionAdminService.listaTipoDisfraz()]
    }
    def altaTipoDisfraz(){
        render(view:"showTipoDisfraz",model:[listado: gestionAdminService.listaTipoDisfraz(),tipoDisfraz: new TipoDisfraz()])
    }
    def guardarAltaTipoDisfraz(  ) {
        gestionAdminService.altaTipoDisfraz(params)
        redirect(action:"showTipoDisfraz")
    }
    def darBajaTipoDisfraz() {
        gestionAdminService.eliminarTipoDisfraz(new Long(params.id))
        redirect(action:"showTipoDisfraz")
    }
    def editarTipoDisfraz(){
        render(view:"showTipoDisfraz",model:[listado: gestionAdminService.listaTipoDisfraz(),tipoDisfrazE: gestionAdminService.unTipoDisfraz(new Long(params.id))])
    }
    def actualizarTipoDisfraz(Long id){
        def tipo = TipoDisfraz.get(params.id)
        tipo.properties = params
        if (tipo!=null){
            tipo.save(flush:true)
            redirect(action:"showTipoDisfraz")
        }
    }
    //gestion Alquiler
    def showAlquiler(){
        [listado: gestionAdminService.listaAlquiler()]
    }
    def detalleAlquiler(){
        [alquiler: gestionAdminService.unAlquiler(new Long(params.id))]
    }
    def editarEstadoAlquiler(Long id){
        render(view:"showAlquiler",model:[listado: gestionAdminService.listaAlquiler(),alquiler: gestionAdminService.unAlquiler(id)])
    }
    def actualizarEstadoAlquiler(Long id){
        def alquiler = Alquiler.get(id)
        alquiler.estado = params.estado
        if (alquiler!=null){
            alquiler.save(flush:true)
            redirect(action:"showAlquiler")
        }
    }
    def darBajaAlquiler(Long id){
        gestionAdminService.eliminarAlquiler(new Long(params.id))
        redirect(action:"showAlquiler")
    }

    //gestion catalogo
    def showCatalogo() {
        [listaCatalogo: gestionAdminService.listaCatalogo(),listaDisfraz: gestionAdminService.listaDisfraz()]
    }
    def agregarDisfrazCatalogo(Long id){
        render(view:"showCatalogo",model:[listaCatalogo: gestionAdminService.listaCatalogo(),disfraz:gestionAdminService.unDisfraz(id),listaDisfraz: gestionAdminService.listaDisfraz()])
    }
    def guardarDisfrazCatalogo(){
        gestionAdminService.agregarDisfrazCatalogo(params)
        redirect(action:"showCatalogo")
    }
    def eliminarDisfrazCatalogo(Long id){
        gestionAdminService.eliminarCatalogo(id)
        redirect(action:"showCatalogo")
    }
    def editarDisfrazCatalogo(Long id){
        render(view:"showCatalogo",model:[listaCatalogo: gestionAdminService.listaCatalogo(),catalogo:gestionAdminService.unCatalogo(id),listaDisfraz: gestionAdminService.listaDisfraz()])

    }
    def actualizarCatalogo(Long id){
        def catalogo = Catalogo.get(params.id)
        catalogo.properties = params
        if (catalogo!=null){

            catalogo.save(flush:true)
            redirect(action:"showCatalogo")
        }
    }
    //Busqueda
    def busquedaAdministrador(){
        if(params.campo.toString()=="Nombre"){
            render(view:"showAdministrador",model:[listado: gestionAdminService.buscarAdminPorNombre(params.busqueda)])
        }else{
            if(params.campo.toString()=="Apellido"){
                render(view:"showAdministrador",model:[listado: gestionAdminService.buscarAdminPorApellido(params.busqueda)])

            }else{
                render(view:"showAdministrador",model:[listado: gestionAdminService.buscarAdminPorUsuario(params.busqueda)])
            }
        }
    }
    def busquedaDisfraz(String campo){
        if(campo=="F"){
            render(view:"showDisfraz",model:[listado: gestionAdminService.buscarDisfrazPorGenero(campo),tipoList: gestionAdminService.listaTipo()])
        }else{
            if(campo=="Mas"){
                render(view:"showDisfraz",model:[listado: gestionAdminService.buscarDisfrazPorGenero('M'),tipoList: gestionAdminService.listaTipo()])
            }else{
                if(campo=="XS" || campo=="S" || campo=="M" ||campo=="L" || campo=="XL" ||campo=="XXL"){
                    render(view:"showDisfraz",model:[listado: gestionAdminService.buscarDisfrazPorTalle(campo),tipoList: gestionAdminService.listaTipo()])
                }else{
                    if(params.descripcion != null){
                        render(view:"showDisfraz",model:[listado: gestionAdminService.buscarDisfrazPorDescripcion(params.descripcion),tipoList: gestionAdminService.listaTipo()])
                    }else{
                        render(view:"showDisfraz",model:[listado: gestionAdminService.buscarDisfrazPorTipo(campo),tipoList: gestionAdminService.listaTipo()])
                    }

                }
            }

        }
    }

    def busquedaTipoDisfraz(String campo){
        if(params.descripcion != null){
            render(view:"showTipoDisfraz",model:[listado: gestionAdminService.buscarTipoDisfrazPorDescripcion(params.descripcion),tipoList: gestionAdminService.listaTipo()])
        }else{
            println campo
            render(view:"showTipoDisfraz",model:[listado: gestionAdminService.buscarTipoDisfrazPorTipo(campo),tipoList: gestionAdminService.listaTipo()])
        }
    }


    def busquedaCliente(){
        if(params.campo.toString()=="Nombre"){
            render(view:"showCliente",model:[listado: gestionAdminService.buscarClientePorNombre(params.busqueda)])
        }else{
            if(params.campo.toString()=="Apellido"){
                render(view:"showCliente",model:[listado: gestionAdminService.buscarClientePorApellido(params.busqueda)])

            }else{
                if(params.campo.toString()=="Usuario"){
                    render(view:"showCliente",model:[listado: gestionAdminService.buscarClientePorUsuario(params.busqueda)])
                }
                else{
                    render(view:"showCliente",model:[listado: gestionAdminService.buscarClientePorDireccion(params.busqueda)])
                }
            }
        }
    }
}
