package tienda
import java.security.MessageDigest
import grails.rest.*

@Resource(uri='/clientes', formats=['xml', 'json'])

class Cliente implements Serializable{
    /*String nombre
    String apellido
    String usuario
    String telefono
    String password
    String direccion
    String estado
<<<<<<< HEAD

=======
>>>>>>> a8a647b553c1a3301070a7aaf98202275883057f
    static constraints = {
    	  nombre (blank:false, maxSize:50);
        apellido (blank:false, mazSize:50)
        usuario (blank:false, unique:true)
        password (blank:false)
        telefono (blank:false)
        direccion (blank:false, maxSize:500)
        estado(nullable:true)
    }*/
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
        usuario (blank:false, unique:true)
        password (blank:false)
        telefono (blank:false)
        direccion (blank:false, maxSize:500)
        estado(nullable:true)
    }

    def generateMD5_A(String s){
        return MessageDigest.getInstance("MD5").digest(s.bytes).encodeHex().toString()
    }

    boolean equals(otro) {
        is(otro) || (otro instanceof Cliente && otro.usuario == usuario)
    }
    //define el atrib de comparacion entre 2 usuarios

    String toString() {
        nombre
    }

    def beforeInsert() {
        password=generateMD5_A(password)//se refiere a la propiedd de esa instacia, la contrasena se encripta
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            password=generateMD5_A(password)//da true si se cmbio una propiedad da true
        }
    }

    def beforeValidate() {
        nombre=nombre?.toUpperCase()
        usuario=usuario?.toLowerCase()
        //antes de validar, traduce todo  mayuscula
    }
}