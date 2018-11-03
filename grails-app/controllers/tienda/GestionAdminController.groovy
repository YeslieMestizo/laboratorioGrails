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
        def cliente = Cliente.get(id)
        cliente.propieties = params
        if (cliente!=null){

            cliente.save()
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

    //gestion Alquiler
    def showAlquiler(){
        [listado: gestionAdminService.listaAlquiler()]
    }
    def detalleAlquiler(){
        [alquiler: gestionAdminService.unAlquiler(new Long(params.id))]
    }

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
}
