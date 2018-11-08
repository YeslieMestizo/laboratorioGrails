package tienda
import grails.rest.*

@Resource(uri='/items', formats=['xml', 'json'])

class Items {
    
    static hasMany = [items: Catalogo]
    static constraints = {
    }
<<<<<<< HEAD

=======
    void agregarItems(Catalogo catalogo) {
        if (!this.items.contains(catalogo)) { //si lo tiene, no lo agrega
            this.items.add(catalogo);
        }        
    }
    void eliminarItems(Catalogo catalogo) {
	this.items.remove(catalogo);	
    }
    BigDecimal total(){
        BigDecimal total=0
        for (a in this.items) {
            total= total+ a.precio
        }
        return total
    }
>>>>>>> a8a647b553c1a3301070a7aaf98202275883057f
}
