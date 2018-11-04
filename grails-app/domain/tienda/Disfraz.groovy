package tienda

class Disfraz {
    String descripcion
    String talle
    String genero
    //String disponibilidad
    TipoDisfraz tipo
    byte[] imagen

    static constraints = {
        talle (inList:['XS','S','M','L','XL','XXL'])
        genero (inList:['F','M'])
<<<<<<< HEAD
        imagen(nullable:true)
=======

>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    }

}
