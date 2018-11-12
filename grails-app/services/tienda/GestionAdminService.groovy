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
    void altaCliente(Map params) {
                    

    }
    void eliminarCliente(Long id) {
        def cliente = Usuario.get(id)
        cliente.estado='inactivo'
        cliente.save(flush:true)
    }
    List listaCliente(){
        def cliente = Usuario.findAllByEstado("activo")
        return cliente
    }
    Usuario unCliente(Long id){
        def cliente = Usuario.get(id)
        return cliente
    }
    //Gestion Administrador
    Usuario altaAdministrador(Map params) {
        def usuario = new Usuario(params)
        if(!usuario.save(flush: true)) {
            usuario.errors.each{
                println it
            }
        }
        def rol = Rol.findByAuthority("ADMIN")     
        def usuarioRol = new UsuarioRol(usuario: usuario, rol: rol)
        if(!usuarioRol.save(flush: true)) {
            usuarioRol.errors.each{
                println it
            }                
        } 
        return usuario
    }
    void eliminarAdministrador(Long id) {
        def administrador = Usuario.get(id)
        def usuarioRol = UsuarioRol.findByUsuario(administrador)
        usuarioRol.delete(flush:true)
        administrador.delete(flush: true)
    }
    List listaAdministrador(){
        def rol = Rol.findByAuthority("ADMIN")
        return UsuarioRol.findAllByRol(rol)
    }
    Usuario unAdministrador(Long id){
        def administrador = Usuario.get(id)
        return administrador
    }
    //gestion usuario
    Usuario getUsuario(String mail){
        return Usuario.findByEmail(mail)        
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
    void devolverItems(Disfraz disfraz){
        def catalogo = Catalogo.findByDisfraz(disfraz)
        catalogo.cantidad = catalogo.cantidad+1
        catalogo.save(flush:true)
    }

    //busqueda Administrador
    List buscarAdminPorNombre(String descripcion) {
        descripcion='%'+descripcion.toUpperCase()+'%'
        return Usuario.findAllByNombreUsuarioLike(descripcion)

    }
    List buscarAdminPorUsuario(String descripcion) {
        descripcion='%'+descripcion.toUpperCase()+'%'
        return Usuario.findAllByEmailLike(descripcion)

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
        descripcion='%'+descripcion.toUpperCase()+'%'
        return Usuario.findAllByNombreUsuarioLike(descripcion)

    }
    List buscarClientePorUsuario(String descripcion) {
        descripcion='%'+descripcion.toUpperCase()+'%'
        return Usuario.findAllByEmailLike(descripcion)

    }

    //contadores
    String cantidadAlquiler(){
        def cantidad = Alquiler.count()
        return cantidad
    }
    String cantidadCliente(){
        def tipo = Rol.findByAuthority("CLIENTE")
        def cantidad = UsuarioRol.findByRol(tipo).count()
        return cantidad
    }
    String cantidadDisfraz(){
        def cantidad = Disfraz.count()
        return cantidad
    }
    String contabilidadGanancia(){
        def venta = Alquiler.findAll()
        def total=0
        for(v in venta){
            total = total+v.precio
        }
        return total
    }
}
