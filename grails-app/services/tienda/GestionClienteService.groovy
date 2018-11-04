package tienda
import grails.gorm.transactions.Transactional

@Transactional
class GestionClienteService{
	def serviceMethod(){

	}
	List listaTipo(){
		def tipo = TipoDisfraz.findAll()
		return tipo
	}
	void aniadirDisfraz(Map params, File file){
		def disfraz = new Disfraz(descripcion:params.descripcion,talle:params.talle,genero:params.genero,tipo:tipo,imagen:filen).save(flush:true)
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
    //Cliente
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
    //Alquiler
    List listaAlquiler(){
        def alquiler = Alquiler.findAll()
        return alquiler
    }
    Alquiler unAlquiler(Long id){
        def alquiler = Alquiler.get(id)
        return alquiler
    }
    //Catalogo
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