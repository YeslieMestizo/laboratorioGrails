package tienda

class Alquiler {
    Date fechaEntrega
    Date fechaDevolucion
    BigDecimal precio 
    String estado
    Cliente cliente
    //Items items
    List<Disfraz> items = new ArrayList()
    
    static constraints = {
    	fechaEntrega (blank:false)
    	fechaDevolucion (blank:false)
    	precio (blank:false)
    	estado(nullable:true,list:['Alquilado','Pendiente','Devuelto'])
    }
    
    void agregarItems(Disfraz catalogo) {
        if (!this.items.contains(catalogo)) { //si lo tiene, no lo agrega
            this.items.add(catalogo);
        }        
    }
    BigDecimal total(){
        BigDecimal total=0
        items.each{
            value-> total = total+value.precio
        }
        return total
    }
    void eliminarItems(Disfraz catalogo) {
	this.items.remove(catalogo);	
    }
}
