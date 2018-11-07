package tienda
import grails.gorm.transactions.Transactional

@Transactional
class GestionClienteService{
	def serviceMethod(){

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
	
}