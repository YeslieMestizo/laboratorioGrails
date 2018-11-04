package tienda
import grails.validation.ValidationException

class GestionClienteController {
    GestionClienteService gestionClienteService
    def index(){

    }
    def showDisfraz(){
        [listado: gestionClienteService.listaDisfraz()]
    }
    def altaDisfraz(){
        [disfraz: new Disfraz(), tipoList: gestionClienteService.listaTipo()]
    }
    def guardarAltaDisfraz() {
      def file = request.getFile('imagen')
      gestionClienteService.altaDisfraz(params,file)

      //redirect action:"vistaPrevia", params: [id: img.id]
      redirect(action:"showDisfraz")
    }
    def darBajaDisfraz() {
      gestionClienteService.eliminarDisfraz(new Long(params.id))
      redirect(action:"showDisfraz")
    }
    def editarDisfraz(){
        [disfraz: gestionClienteService.unDisfraz(new Long(params.id))]
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
        [listado: gestionClienteService.listaCliente()]
    }
    def altaCliente(){
        [cliente: new Cliente()]
    }
    def guardarAltaCliente(  ) {
      gestionClienteService.altaCliente(params)
      redirect(action:"showCliente")
    }
    def darBajaCliente() {
      gestionClienteService.eliminarCliente(new Long(params.id))
      redirect(action:"showCliente")
    }
    def editarCliente(){
        [cliente: gestionClienteService.unCliente(new Long(params.id))]
    }
    def actualizarCliente(Long id){
        def cliente = Cliente.get(params.id)
        cliente.properties = params
        if (cliente!=null){

            cliente.save(flush:true)
            redirect(action:"showCliente")
        }      
    }
    //Gestion de tipoDisfraz
    def showTipoDisfraz(){
        [listado: gestionClienteService.listaTipoDisfraz()]
    }
    def altaTipoDisfraz(){
        [tipoDisfraz: new TipoDisfraz()]
    }
    def guardarAltaTipoDisfraz(  ) {
      gestionClienteService.altaTipoDisfraz(params)
      redirect(action:"showTipoDisfraz")
    }
    def darBajaTipoDisfraz() {
      gestionClienteService.eliminarTipoDisfraz(new Long(params.id))
      redirect(action:"showTipoDisfraz")
    }
    def editarTipoDisfraz(){
        [tipoDisfraz: gestionClienteService.unTipoDisfraz(new Long(params.id))]
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
        [listado: gestionClienteService.listaAlquiler()]
    }
    def detalleAlquiler(){
        [alquiler: gestionClienteService.unAlquiler(new Long(params.id))]
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
    //gestion catalogo
    def showCatalogo() { 
        [listaCatalogo: gestionClienteService.listaCatalogo(),listaDisfraz: gestionClienteService.listaDisfraz()]
    }
    def agregarDisfrazCatalogo(Long id){
        render(view:"showCatalogo",model:[listaCatalogo: gestionClienteService.listaCatalogo(),disfraz:gestionClienteService.unDisfraz(id),listaDisfraz: gestionClienteService.listaDisfraz()])        
    }
    def guardarDisfrazCatalogo(){
        gestionClienteService.agregarDisfrazCatalogo(params)
        redirect(action:"showCatalogo")
    }
    def eliminarDisfrazCatalogo(Long id){
        gestionClienteService.eliminarCatalogo(id)
        redirect(action:"showCatalogo")
    }
    def editarDisfrazCatalogo(Long id){
        render(view:"showCatalogo",model:[listaCatalogo: gestionClienteService.listaCatalogo(),catalogo:gestionClienteService.unCatalogo(id),listaDisfraz: gestionClienteService.listaDisfraz()])        
    }
    def actualizarCatalogo(Long id){
        def catalogo = Catalogo.get(params.id)
        catalogo.properties = params
        if (catalogo!=null){
            catalogo.save(flush:true)
            redirect(action:"showCatalogo")
        }    
    }
    def verCarritoCompra(){
      
    }
}
