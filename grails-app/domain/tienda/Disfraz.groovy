package tienda

class Disfraz {
    String descripcion
    String talle
    String genero
    TipoDisfraz tipo
    byte[] imagen
    String estado

    static constraints = {
        talle (blank:false, inList:['XS','S','M','L','XL','XXL'])
        genero (blank:false, inList:['F','M'])
        imagen(nullable:true)
        estado(nullable:true)
    }
}
