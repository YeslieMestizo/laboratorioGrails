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
    void altaDisfraz(Map params) {
        def disfraz = new Disfraz(params).save(flush:true)
    }
    List listaDisfraz(){
        def disfraz = Disfraz.findAllByEstado("activo")
        return disfraz
    }
    void eliminarDisfraz(Long id) {
        def disfraz = Disfraz.get(id)
        disfraz.estado='inactivo'
        disfraz.save()
        //disfraz.delete(flush: true)
    }

    Disfraz unDisfraz(Long id){
        def disfraz = Disfraz.get(id)
        return disfraz
    }
    //Gestion Cliente
    Cliente altaCliente(Map params) {
        def cliente = new Cliente(params).save(flush:true)
        return cliente
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
    Administrador altaAdministrador(Map params) {
        def administrador = new Administrador(params).save(flush:true)
        return administrador
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
    void eliminarAlquiler(Long id) {
        def alquiler = Alquiler.get(id)
        alquiler.delete(flush: true)
    }
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

    //busqueda Administrador
    List buscarAdminPorNombre(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Administrador.findAllByNombreLike(descripcion)

    }
    List buscarAdminPorApellido(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Administrador.findAllByApellidoLike(descripcion)

    }
    List buscarAdminPorUsuario(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Administrador.findAllByUsuarioLike(descripcion)

    }
    //busqueda DISFRAZ
    List buscarDisfrazPorGenero(String descripcion) {
        return Disfraz.findAllByGenero(descripcion)

    }
    List buscarDisfrazPorTalle(String descripcion) {
        return Disfraz.findAllByTalle(descripcion)

    }
    List buscarDisfrazPorDescripcion(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Disfraz.findAllByDescripcionLike(descripcion)

    }
    //busqueda TIPO DISFRAZ
    List buscarTipoDisfrazPorDescripcion(String descripcion) {
        descripcion='%'+descripcion+'%'
        return TipoDisfraz.findAllByDescripcionLike(descripcion)

    }

    List buscarDisfrazPorTipo(String id) {
        TipoDisfraz tipo = TipoDisfraz.findById(id)
        return Disfraz.findAllByTipo(tipo)
    }

    //busqueda Cliente
    List buscarClientePorNombre(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Cliente.findAllByNombreLike(descripcion)

    }
    List buscarClientePorApellido(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Cliente.findAllByApellidoLike(descripcion)

    }
    List buscarClientePorUsuario(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Cliente.findAllByUsuarioLike(descripcion)

    }
    List buscarClientePorDireccion(String descripcion) {
        descripcion='%'+descripcion+'%'
        return Cliente.findAllByDireccionLike(descripcion)
    }

    //contadores
    String cantidadAlquiler(){
        def cantidad = Alquiler.count()
        return cantidad
    }
    String cantidadCliente(){
        def cantidad = Cliente.count()
        return cantidad
    }
    String cantidadDisfraz(){
        def cantidad = Disfraz.count()
        return cantidad
    }
}
