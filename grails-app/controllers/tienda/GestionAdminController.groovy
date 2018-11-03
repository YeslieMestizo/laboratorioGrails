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
      def file = request.getFile('imagen')
      gestionAdminService.altaDisfraz(params,file)

      //redirect action:"vistaPrevia", params: [id: img.id]
      redirect(action:"showDisfraz")
    }
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

<<<<<<< HEAD
            cliente.save()
            redirect(action:"showCliente")
        }
=======
            cliente.save(flush:true)
            redirect(action:"showCliente")
        }      
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
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
    def actualizarTipoDisfraz(Long id){
        def tipo = TipoDisfraz.get(params.id)
        tipo.properties = params
        if (tipo!=null){
            tipo.save(flush:true)
            redirect(action:"showTipoDisfraz")
        }      
    }
    
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
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
      redirect action:"vistaPrevia", params: [id: img.id]
  }
  def vistaPrevia={
  }
  def verImagen = {
    def img = Imagen.get(params.id)
    response.outputStream << img.imagen
    response.outputStream.flush()
  }
=======
    
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
            render(view:"showCatalogo",model:[listaCatalogo: gestionAdminService.listaCatalogo(),listaDisfraz: gestionAdminService.listaDisfraz()])
            //redirect(action:"showCatalogo")
        }    
    }
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
}
