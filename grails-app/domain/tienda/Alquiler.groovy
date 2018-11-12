package tienda
import grails.rest.*

@Resource(uri='/alquileres', formats=['xml', 'json'])

class Alquiler {
    Date fechaEntrega
    Date fechaDevolucion
    BigDecimal precio

    String estado
    Usuario cliente
    static hasMany = [items:Disfraz]
    //List<Disfraz> items = new ArrayList<>()

    static constraints = {
    	fechaEntrega(blank:false,matches:"[0-9]{2}/[0-9]{2}/[0-9]{4}")
    	fechaDevolucion(blank:false,matches:"[0-9]{2}/[0-9]{2}/[0-9]{4}")
    	precio (nullable:true,blank:false)
    	estado(nullable:true,list:['Alquilado','Pendiente','Devuelto'])
        items(nullable : true)
    }

}
