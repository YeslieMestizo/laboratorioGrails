package tienda

class MedioPago {
    String descripcion
    static constraints = {
        descripcion(inList:['Efectivo','Tarjeta'])
    }
}
