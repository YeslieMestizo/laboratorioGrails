package tienda
import grails.rest.*

@Resource(uri='/alquileres', formats=['xml', 'json'])

class Alquiler {
    Date fechaEntrega
    Date fechaDevolucion
    float precio
    String estado
    Cliente cliente
    Items items
    static constraints = {
    	fechaEntrega (blank:false)
    	fechaDevolucion (blank:false)
    	precio (blank:false)
    	estado(list:['Alquilado','Pendiente','Devuelto'])
    }
}
