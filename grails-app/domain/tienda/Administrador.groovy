package tienda
import java.security.MessageDigest


class Administrador implements Serializable{

<<<<<<< HEAD


class Administrador {
=======
>>>>>>> cc124f449f913dec460c9cdc7609902b6f29b914
    String nombre
    String apellido
    String usuario
    String password
    String telefono

    static constraints = {
        nombre (blank:false, maxSize:50)
        apellido (blank:false, mazSize:50)
        usuario (blank:false, unique:true)
        password (blank:false)
        telefono(blank:false)
    }
}
