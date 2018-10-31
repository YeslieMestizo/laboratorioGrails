package tienda

class LoginController {

  def index() {
   if (request.get) {
     return render(view: 'login')
   }
     def u = Cliente.findByUsuario(params.usuario)
     if (u) {
       if (u.password == u.generateMD5_A(params.password)) {
          session.cliente = u
          render(view: "/index")
        } else {
          render(view: "login", model: [message: "Constraseña Incorrecta"])
        }
      } else {
        render(view: "login", model: [message: "No existe el usuario ingresado"])
      }
    }

    def logout() {
      session.usuario=null
      render(view: "/index")
    }
}
