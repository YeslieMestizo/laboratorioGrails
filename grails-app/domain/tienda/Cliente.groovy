package tienda
import java.security.MessageDigest

import grails.rest.*

@Resource(uri='/clientes', formats=['json', 'xml'])
class Cliente implements Serializable{

    String nombre
    String apellido
    String usuario
    String telefono
    String direccion
    String estado


    static constraints = {
    	  nombre (blank:false, maxSize:50)
        apellido (blank:false, mazSize:50)
        usuario (blank:false, unique:true,email:true)
        telefono (blank:false)
        direccion (blank:false, maxSize:500)
        estado(nullable:true,list:['activo','inactivo'])
    }
}
