package tienda
import grails.rest.*

@Resource(uri='/alquileres', formats=['xml', 'json'])

class Alquiler {
    Date fechaEntrega
    Date fechaDevolucion
<<<<<<< HEAD
    float precio
=======
    BigDecimal precio 
>>>>>>> a8a647b553c1a3301070a7aaf98202275883057f
    String estado
    Cliente cliente
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
