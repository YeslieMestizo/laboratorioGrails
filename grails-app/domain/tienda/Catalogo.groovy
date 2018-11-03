package tienda

class Catalogo {
    int cantidad
<<<<<<< HEAD
    BigDecimal precio
=======
    double precio
>>>>>>> 52dc15d55d727a4e6ca7ba5b61520ebc4ceded26
    Disfraz disfraz

    static constraints = {
    cantidad (blank: false, minSize:1)
    precio (blank: false)
    disfraz (blank: false)
}
}