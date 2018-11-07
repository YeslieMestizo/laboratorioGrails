package tienda
import grails.rest.*

@Resource(uri='/catalogos', formats=['xml', 'json'])

class Catalogo {
    int cantidad
    BigDecimal precio
    Disfraz disfraz

    static constraints = {
	    cantidad (blank: false, minSize:1)
	    precio (blank: false)
	    disfraz (blank: false)
	}
}
