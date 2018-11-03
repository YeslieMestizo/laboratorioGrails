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

    }

}
