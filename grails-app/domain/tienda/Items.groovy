package tienda
import grails.rest.*

@Resource(uri='/items', formats=['xml', 'json'])

class Items {
    static hasMany = [disfraces: Disfraz]
    static constraints = {
    }

}
