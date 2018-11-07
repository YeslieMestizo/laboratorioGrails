package tienda
import java.security.MessageDigest


class Administrador implements Serializable{

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
