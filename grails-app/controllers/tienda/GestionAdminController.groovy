package tienda
import grails.validation.ValidationException

class GestionAdminController {
    GestionAdminService gestionAdminService
    def index() {

    }

    //gestion disfraz
    def showDisfraz(){
        [listado: gestionAdminService.listaDisfraz()]
    }
    def altaDisfraz(){
        [disfraz: new Disfraz(), tipoList: gestionAdminService.listaTipo()]
    }
    def guardarAltaDisfraz() {
<<<<<<< HEAD
        def file = request.getFile('myFile')
        def disfraz = new Disfraz(descripcion:params.descripcion,talle:params.talle,genero:params.genero,tipo:params.tipo,imagen:file).save(flush:true)
        //disfraz.save(flush:true)
        if (disfraz.hasErrors()) {
            disfraz.errors.allErrors.each {
                println it
            }
        }
        render view:"vistaPrevia", model: [disfraz: disfraz]
    }
    def verImagen () {
        def disfraz = Disfraz.get(params.id)
        response.outputStream << disfraz.imagen
        response.outputStream.flush()
    } 
=======
    def file = request.getFile('myFile')
    def disfraz = new Disfraz(descripcion:params.descripcion,talle:params.talle,genero:params.genero,tipo:params.tipo,imagen:file).save(flush:true)
    disfraz.save(flush:true)
    if (disfraz.hasErrors()) {
        disfraz.errors.allErrors.each {
            println it
        }
    }
    redirect action:"vistaPrevia", params: [id: disfraz.id]
    //gestionAdminService.altaDisfraz(params)
    //redirect(action:"showDisfraz")
    }

    def vistaPrevia(Long id){
        [disfraz: gestionAdminService.unDisfraz(new Long(params.id))]
    }

    def verImagen = {
      def disfraz = Disfraz.get(params.id)
      response.outputStream << disfraz.imagen
      response.outputStream.flush()
    }

>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    def darBajaDisfraz() {
        gestionAdminService.eliminarDisfraz(new Long(params.id))
        redirect(action:"showDisfraz")
    }
    def editarDisfraz(){
        [disfraz: gestionAdminService.unDisfraz(new Long(params.id))]
    }

    def actualizarDisfraz(Long id){
        def disfraz = Disfraz.get(params.id)
        disfraz.properties = params
        if (disfraz!=null){
            disfraz.save(flush:true)
            redirect(action:"showDisfraz")
        }
    }
    //Gestion de cliente
    def showCliente(){
        [listado: gestionAdminService.listaCliente()]
    }
    def altaCliente(){
        [cliente: new Cliente()]
    }
    def guardarAltaCliente(  ) {
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
<<<<<<< HEAD
        }      
=======
        }
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    }
    //Gestion de Administrador
    def showAdministrador(){
        [listado: gestionAdminService.listaAdministrador()]
    }
    def altaAdministrador(){
        [administrador: new Administrador()]
    }
    def guardarAltaAdministrador(  ) {
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
        [tipoDisfraz: new TipoDisfraz()]
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
        [tipoDisfraz: gestionAdminService.unTipoDisfraz(new Long(params.id))]
    }
<<<<<<< HEAD
=======

>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    def actualizarTipoDisfraz(Long id){
        def tipo = TipoDisfraz.get(params.id)
        tipo.properties = params
        if (tipo!=null){
            tipo.save(flush:true)
            redirect(action:"showTipoDisfraz")
        }
    }
<<<<<<< HEAD
    
=======

>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    //gestion Alquiler
    def showAlquiler(){
        [listado: gestionAdminService.listaAlquiler()]
    }
    def detalleAlquiler(){
        [alquiler: gestionAdminService.unAlquiler(new Long(params.id))]
    }
<<<<<<< HEAD

    def cargar(){

    }
    def grabar={
        def file = request.getFile('imagen')
        def img = new Imagen(imagen:file,nombre:params.nombre).save(flush:true)
        img.save(flush:true)
        if (img.hasErrors()) {
            img.errors.allErrors.each {
                println it
            }
        }
        render(view:"vistaPrevia", params: [id: disfraz.id])
    }
    def vistaPrevia(){
    }

    
=======

>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
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
<<<<<<< HEAD
            redirect(action:"showCatalogo")
        }
=======
            render(view:"showCatalogo",model:[listaCatalogo: gestionAdminService.listaCatalogo(),listaDisfraz: gestionAdminService.listaDisfraz()])
            //redirect(action:"showCatalogo")
        }    
>>>>>>> 29bf403ea6de6e7d137a798c8143763d070878f8
    }
<<<<<<< HEAD
    
    //Busqueda
    def busquedaAdministrador(){
        println params.busqueda
        render(view:"showAdministrador",model:[listado: gestionAdminService.buscarAdminPorNombre(params.busqueda)])
    }
=======

>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
}
