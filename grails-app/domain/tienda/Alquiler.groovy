package tienda

class Alquiler {
    Date fechaEntrega
    Date fechaDevolucion
    float precio
    MedioPago medio

    static constraints = {
    	fechaEntrega (blank:false)
    	fechaDevolucion (blank:false)
    	precio (blank:false)
    	
    }
}
