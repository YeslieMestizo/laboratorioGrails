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
    //Gestion MedioPago
    void altaMedioPago(Map params) {
        def medioPago = new MedioPago(params).save(flush:true)
    }
    void eliminarMedioPago(Long id) {
      def medioPago = MedioPago.get(id)
      tipoMedioPago.delete(flush: true)
    }
    List listaMedioPago(){
        def medioPago = MedioPago.findAll()
        return medioPago
    }
    
    MedioPago unMedioPago(Long id){
        def medioPago = MedioPago.get(id)
        return medioPago
    }
}
