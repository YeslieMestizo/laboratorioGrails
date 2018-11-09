package tienda
import grails.gorm.transactions.Transactional

@Transactional
class GestionClienteService{
    GestionAdminService gestionAdminService
	def serviceMethod(){

	}
        //busqueda DISFRAZ
    List buscarDisfrazPorGenero(String descripcion) {
        def list=[]
        for (disfraz in gestionAdminService.buscarDisfrazPorGenero(descripcion)){
            if(Catalogo.findByDisfraz(disfraz)){
            list.add(Catalogo.findByDisfraz(disfraz))}
        }
         return list
    }
    List buscarDisfrazPorTalle(String descripcion) {
        def list=[]
        for (disfraz in gestionAdminService.buscarDisfrazPorTalle(descripcion)){
            if(Catalogo.findByDisfraz(disfraz)){
            list.add(Catalogo.findByDisfraz(disfraz))}
        }
         return list
    }
    List buscarDisfrazPorDescripcion(String descripcion) {
        def list=[]
        for (disfraz in gestionAdminService.buscarDisfrazPorDescripcion(descripcion)){
            if(Catalogo.findByDisfraz(disfraz)){
            list.add(Catalogo.findByDisfraz(disfraz))}
        }
         return list
    }
    List buscarDisfrazPorTipo(String descripcion){
        def list=[]
        for (disfraz in gestionAdminService.buscarDisfrazPorTipo(descripcion)){
            if(Catalogo.findByDisfraz(disfraz)){
            list.add(Catalogo.findByDisfraz(disfraz))}
        }
        return list
    }
	
}