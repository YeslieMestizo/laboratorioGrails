package tienda

class Cliente {
    String nombre
    String apellido
    String usuario
    String contrasena
    int telefono
    String direccion

    static constraints = {
    nombre(blank:false, maxSize:20)
    apellido(blank:false, maxSize:20)
    usuario(blank:false)
    contrasena(blank:false)
    telefono(blank:false)
    direccion(blank:false)
    }
}
