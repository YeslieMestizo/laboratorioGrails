package tienda

class Catalogo {
    int cantidad
    doube precio
    Disfraz disfraz

    static constraints = {
    cantidad (blank: false, minSize:1)
    precio (blank: false)
    disfraz (blank: false)
    }
}
