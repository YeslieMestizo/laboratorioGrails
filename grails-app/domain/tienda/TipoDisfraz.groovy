package tienda
import grails.rest.*

@Resource(uri='/tiposDisfraces', formats=['xml', 'json'])

class TipoDisfraz {
    String descripcion
    static constraints = {
    	descripcion (maxSize:200)
    }
}
