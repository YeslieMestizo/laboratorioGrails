package tienda
import grails.rest.*

@Resource(uri='/items', formats=['xml', 'json'])

class Items {
<<<<<<< HEAD
    //List<Catalogo> items = new ArrayList();

=======
    
>>>>>>> a1e647305293c522db912bf67d61331a111f86cf
    static hasMany = [items: Catalogo]
    static constraints = {
    }

    void agregarItems(Catalogo catalogo) {
        if (!this.items.contains(catalogo)) { //si lo tiene, no lo agrega
            this.items.add(catalogo);
        }
    }
<<<<<<< HEAD

=======
>>>>>>> a1e647305293c522db912bf67d61331a111f86cf
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
}
