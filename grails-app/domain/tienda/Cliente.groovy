package tienda

class Cliente {
    String nombre
    String apellido
    String usuario
    String telefono
    String password
    String direccion
    String estado

    static constraints = {
    	nombre (blank:false, maxSize:50)
        apellido (blank:false, mazSize:50)
        usuario (unique:true)
        password (blank:false)
        telefono (blank:false)
        direccion (blank:false, maxSize:500)
        estado(nullable:true)
    }
}
