package tienda
import grails.rest.*

@Resource(uri='/items', formats=['xml', 'json'])

class Items {
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
    //List<Catalogo> items = new ArrayList();

=======
>>>>>>> df3574264bd979ae2abbe2844a40ec56077270bd
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba
    
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
<<<<<<< HEAD
=======
<<<<<<< HEAD

=======
>>>>>>> a1e647305293c522db912bf67d61331a111f86cf
>>>>>>> df3574264bd979ae2abbe2844a40ec56077270bd
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba
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
