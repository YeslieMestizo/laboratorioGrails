package tienda

class Cliente {
    String nombre
    String apellido
    String usuario
    String password
    int telefono
    String direccion

    static constraints = {
    	nombre (blank:false, maxSize:50)
        apellido (blank:false, mazSize:50)
        usuario (blank:false)
        password (blank:false)
        telefono (matches:"[0-9]{3}-[0-9]{6}", blank:false)
        direccion (blank:false, maxSize:500)
    }
}
