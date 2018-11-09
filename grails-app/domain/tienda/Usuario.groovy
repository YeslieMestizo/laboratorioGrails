package tienda

import java.security.MessageDigest 
//para encriptar la cotrasena
class Usuario implements Serializable {
    private static final long serialVersionUID = 1

      String nombreUsuario
      String password
      String email//para que se loguee

      def generateMD5_A(String s){
          return MessageDigest.getInstance("MD5").digest(s.bytes).encodeHex().toString()
      }

      boolean equals(otro) {
        is(otro) || (otro instanceof Usuario && otro.email == email)
      }
      //define el atrib de comparacion entre 2 usuarios

      String toString() {
        nombreUsuario
      }

      Set<Rol> getRoles() {

                    if (nombreUsuario!=null) {
                        UsuarioRol.findAllByUsuario(this)*.rol
                    } else {
                        new TreeSet<Rol>()
                    }
      }

          Set<UsuarioRol> getUsuarioRol() {
        UsuarioRol.findAllByUsuario(this)
      }

      def beforeInsert() {
        password=generateMD5_A(password)
        //se refiere a la propiedd de esa instacia, la contrasena se encripta
      }

      def beforeUpdate() {
        if (isDirty('password')) {
          password=generateMD5_A(password)
          //da true si se cmbio una propiedad da true
        }
      }

            def beforeValidate() {
                nombreUsuario=nombreUsuario?.toUpperCase()
                email=email?.toLowerCase()
                //antes de validar, traduce todo  mayuscula
            }

      static constraints = {
        nombreUsuario blank: false, unique: true
        password blank: false
        email blank: false, email: true, unique: true
        //restricciones
      }
}
