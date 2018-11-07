package tienda

class Items {
    //List<Catalogo> items = new ArrayList();
    
    static hasMany = [items: Catalogo]
    static constraints = {
    }
    void agregarItems(Catalogo catalogo) {
        if (!this.items.contains(catalogo)) { //si lo tiene, no lo agrega
            this.items.add(catalogo);
        }        
    }
//    BigDecimal total(){
//        BigDecimal total=0
//        items.each{
//            value-> total = total+value.precio
//        }
//        return total
//    }
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
