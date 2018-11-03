package tienda

class Catalogo {
    int cantidad
<<<<<<< HEAD
    double precio
=======
<<<<<<< HEAD
    BigDecimal precio
=======
    double precio
>>>>>>> 52dc15d55d727a4e6ca7ba5b61520ebc4ceded26
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
    Disfraz disfraz

    static constraints = {
    cantidad (blank: false, minSize:1)
    precio (blank: false)
    disfraz (blank: false)
}
}