package tienda
class LoginController {
 def index(){
     redirect action:"login"
 }
    
  def login() {
   if (request.get) {
     return render(view: 'login')
   }


    def u = Usuario.findByEmail(params.email)

     if (u) {
       if (u.password == u.generateMD5_A(params.password)) {
          session.usuario = u
          if(session.usuario.getRoles().any{it.authority=='ADMIN'}) {
            redirect(controller: "gestionAdmin", action: "index")
          }
          else{
              session.datos = Cliente.findByUsuario(params.email)
              println session.datos
            redirect(controller: "gestionCliente", action: "index")
            
          }

        } else {
          render(view: "login", model: [message: "Constraseña Incorrecta"])
        }
      } else {
        render(view: "login", model: [message: "No existe el usuario ingresado"])
      }
    }

    def logout() {
        if(session.usuario.getRoles().any{it.authority=='CLIENTE'}) {
            session.carrito.items.clear()
          }
      session.usuario=null
      session.datos = null      
      render(view: "/index")
    }
}
