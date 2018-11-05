package tienda

class RegistroClienteController {

    def registro() {
      if(request.method == 'POST') {
        def c = new Cliente(nombre:params.nombre, apellido:params.apellido, usuario:params.usuario,telefono:params.telefono,password:params.password,direccion:params.direccion)
        if(c.password != params.confirmacion) {
          c.errors.rejectValue("password", "cliente.password.dontmatch")
          return [cliente:c]
        }
        else if(c.save(flush:true)) {
            println c.password
          //session.cliente = c
            redirect(controller:"Login", action:"index")
        }
        else {
            return [cliente:c]
        }
      }
    }
}
