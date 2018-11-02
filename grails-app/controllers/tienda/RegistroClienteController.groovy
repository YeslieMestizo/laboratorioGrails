package tienda

class RegistroClienteController {

    def registro() {
      if(request.method == 'POST') {
        def c = new Cliente(params)
        if(c.password != params.confirmacion) {
          c.errors.rejectValue("password", "cliente.password.dontmatch")
          return [cliente:c]
        }
        else if(c.save()) {
          session.cliente = c
            redirect(controller:"store")
        }
        else {
            return [cliente:c]
        }
      }
     }
}
