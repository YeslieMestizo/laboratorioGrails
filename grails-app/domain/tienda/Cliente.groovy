package tienda

class Cliente {
    String nombre
    String apellido
    String usuario
    String contrasena
    int telefono
    String direccion

    static constraints = {
<<<<<<< HEAD
    	nombre (blank:false, maxSize:50)
        apellido (blank:false, mazSize:50)
        usuario (blank:false)
        contrasena (blank:false)
        telefono (matches:"[0-9]{3}-[0-9]{6}", blank:false)
        direccion (blank:false, maxSize:500)
=======
    nombre(blank:false, maxSize:20)
    apellido(blank:false, maxSize:20)
    usuario(blank:false)
    contrasena(blank:false)
    telefono(blank:false)
    direccion(blank:false)
>>>>>>> 00c5f33087b87c64be40345b71c0b68bda031958
    }
}
