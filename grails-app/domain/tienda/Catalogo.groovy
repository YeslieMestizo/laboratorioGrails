package tienda

class Catalogo {
    int cantidad
    BigDecimal precio
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
    BigDecimal precio
=======
<<<<<<< HEAD
    double precio
=======
<<<<<<< HEAD
    BigDecimal precio
=======
    double precio
>>>>>>> 52dc15d55d727a4e6ca7ba5b61520ebc4ceded26
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
>>>>>>> df0c17c9c6ad0a2b8d8d22bbf23a160842dbbcd2
>>>>>>> 29bf403ea6de6e7d137a798c8143763d070878f8
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    Disfraz disfraz

    static constraints = {
    cantidad (blank: false, minSize:1)
    precio (blank: false)
    disfraz (blank: false)
}
}
