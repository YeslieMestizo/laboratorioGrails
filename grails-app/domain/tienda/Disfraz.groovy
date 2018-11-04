package tienda

class Disfraz {
    String descripcion
    String talle
    String genero
    TipoDisfraz tipo
    byte[] imagen
    String estado

    static constraints = {
        talle (inList:['XS','S','M','L','XL','XXL'])
        genero (inList:['F','M'])
        imagen(nullable:true)
<<<<<<< HEAD
        estado(nullable:true)
=======
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
    }
}