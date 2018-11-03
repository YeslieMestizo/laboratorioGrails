package tienda
import grails.gorm.transactions.Transactional

@Transactional
class GestionAdminService {

    def serviceMethod() {

    }
    //Gestion Tipo
    List listaTipo(){
        def tipo = TipoDisfraz.findAll()
        return tipo
    }
    //Gestion Disfraz
    void altaDisfraz(Map params,File file) {
    //def file = request.getFile('imagen')
    def disfraz = new Disfraz(descriocion:params.descripcion,talle:params.talle,genero:params.genero,tipo:tipo,imagen:filen).save(flush:true)
  //  def img = new Imagen(imagen:file,nombre:params.descripcion).save(flush:true)
    //img.save(flush:true)
    if (disfraz.hasErrors()) {
        disfraz.errors.allErrors.each {
            println it
        }
    }

    }
    void eliminarDisfraz(Long id) {
      def disfraz = Disfraz.get(id)
      disfraz.delete(flush: true)
    }
    List listaDisfraz(){
        def disfraz = Disfraz.findAll()
        return disfraz
    }
    Disfraz unDisfraz(Long id){
        def disfraz = Disfraz.get(id)
        return disfraz
    }
    //Gestion Cliente
    void altaCliente(Map params) {
        def cliente = new Cliente(params).save(flush:true)
    }
    void eliminarCliente(Long id) {
      def cliente = Cliente.get(id)
      cliente.delete(flush: true)
    }
    List listaCliente(){
        def cliente = Cliente.findAll()
        return cliente
    }
    Cliente unCliente(Long id){
        def cliente = Cliente.get(id)
        return cliente
    }
    //Gestion Administrador
    void altaAdministrador(Map params) {
        def administrador = new Administrador(params).save(flush:true)
    }
    void eliminarAdministrador(Long id) {
      def administrador = Administrador.get(id)
      administrador.delete(flush: true)
    }
    List listaAdministrador(){
        def administrador = Administrador.findAll()
        return administrador
    }
    Administrador unAdministrador(Long id){
        def administrador = Administrador.get(id)
        return administrador
    }
    //Gestion TipoDisfraz
    void altaTipoDisfraz(Map params) {
        def tipoDisfraz = new TipoDisfraz(params).save(flush:true)
    }
    void eliminarTipoDisfraz(Long id) {
      def tipoDisfraz = TipoDisfraz.get(id)
      tipoDisfraz.delete(flush: true)
    }
    List listaTipoDisfraz(){
        def tipoDisfraz = TipoDisfraz.findAll()
        return tipoDisfraz
    }

    TipoDisfraz unTipoDisfraz(Long id){
        def tipoDisfraz = TipoDisfraz.get(id)
        return tipoDisfraz
    }

    //gestion Alquiler
    List listaAlquiler(){
        def alquiler = Alquiler.findAll()
        return alquiler
    }
    Alquiler unAlquiler(Long id){
        def alquiler = Alquiler.get(id)
        return alquiler
    }
<<<<<<< HEAD
}
=======
    
    //gestion catalogo
    List listaCatalogo(){
        def catalogo = Catalogo.findAll()
        return catalogo
    }
    void agregarDisfrazCatalogo(Map params){
        def catalogo = new Catalogo(params).save(flush:true)
    }
    void eliminarCatalogo(Long id){
        def catalogo = Catalogo.get(id)
        catalogo.delete(flush: true)
    }
    Catalogo unCatalogo(Long id){
        def catalogo = Catalogo.get(id)
        return catalogo
    }
}
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
