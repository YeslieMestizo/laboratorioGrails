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
      gestionAdminService.altaDisfraz(params)
      redirect(action:"showDisfraz")
    }
    def editarEliminarDisfraz(){
        [listado: gestionAdminService.listaDisfraz()]
    }
    def darBajaDisfraz() {
      gestionAdminService.eliminarDisfraz(new Long(params.id))
      redirect(action:"editarEliminarDisfraz")
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
    def editarEliminarCliente(){
        [listado: gestionAdminService.listaCliente()]
    }
    def darBajaCliente() {
      gestionAdminService.eliminarCliente(new Long(params.id))
      redirect(action:"editarEliminarCliente")
    }
    def editarCliente(){
        [cliente: gestionAdminService.unCliente(new Long(params.id))]
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
    def editarEliminarAdministrador(){
        [listado: gestionAdminService.listaAdministrador()]
    }
    def darBajaAdministrador() {
      gestionAdminService.eliminarAdministrador(new Long(params.id))
      redirect(action:"editarEliminarAdministrador")
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
    def editarEliminarTipoDisfraz(){
        [listado: gestionAdminService.listaTipoDisfraz()]
    }
    def darBajaTipoDisfraz() {
      gestionAdminService.eliminarTipoDisfraz(new Long(params.id))
      redirect(action:"editarEliminarTipoDisfraz")
    }
    def editarTipoDisfraz(){
        [tipoDisfraz: gestionAdminService.unTipoDisfraz(new Long(params.id))]
    }
    //Gestion de MedioPago
    def showMedioPago(){        
        [listado: gestionAdminService.listaMedioPago()]
    }
    def altaMedioPago(){
        [MedioPago: new MedioPago()]
    }
    def guardarAltaMedioPago(  ) {
      gestionAdminService.altaMedioPago(params)
      redirect(action:"showMedioPago")
    }
    def editarEliminarMedioPago(){
        [listado: gestionAdminService.listaMedioPago()]
    }
    def darBajaMedioPago() {
      gestionAdminService.eliminarMedioPago(new Long(params.id))
      redirect(action:"editarEliminarMedioPago")
    }
    def editarMedioPago(){
        [medioPago: gestionAdminService.unMedioPago(new Long(params.id))]
    }
}
