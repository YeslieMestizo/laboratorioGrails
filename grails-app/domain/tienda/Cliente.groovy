package tienda

class Cliente {
    String nombre
    String apellido
    String usuario
    String telefono
    String password
    String direccion

    static constraints = {
    	nombre (blank:false, maxSize:50)
        apellido (blank:false, mazSize:50)
        usuario (blank:false)
        password (blank:false)
        telefono (blank:false)
        direccion (blank:false, maxSize:500)
    }
}
