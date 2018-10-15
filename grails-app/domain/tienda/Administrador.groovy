package tienda

class Administrador {
    String nombre
    String apellido
    String usuario
    String contrasena
    String telefono

    static constraints = {
        nombre (blank:false, maxSize:50)
        apellido (blank:false, mazSize:50)
        usuario (blank:false)
        contrasena (blank:false)
        telefono(matches:"[0-9]{3}-[0-9]{6}", blank:false)
    }
}
