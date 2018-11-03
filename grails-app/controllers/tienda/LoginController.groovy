package tienda
import grails.validation.ValidationException

class LoginController {
LoginService loginService

  def index(){
  render(view: "login")
  }
  def login(){
    if (request.get){
        return render(view: 'login')
    }
      def u = Cliente.findByUsuario(params.usuario)
      def a = Administrador.findByUsuario(params.usuario)
      if(u){
        if (u.password == u.password) {
<<<<<<< HEAD
           session.usuario = u
           render(view: "/index")
         } else {
           render(view: "login", model: [message: "Constraseña Incorrecta"])
         }
       } else {
       if (a) {
         if (a.password == a.password) {
            session.usuario = a
=======
            session.usuario = u
            render(view: "/index")
            
        }else{
            render(view: "login", model: [message: "Constraseña Incorrecta"])
        }
      }else{
          if(a){
              if(a.password == a.password){
                session.usuario = a
                redirect(controller:"gestionAdmin", action:"index")
              }else{
                render(view: "login", model: [message: "Constraseña Incorrecta"])
              }
          }else{
      /*if(a){
          if(a.password == a.password) {
            session.administrador = a
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
            render(view: "/gestionAdmin/index")
          }else{
            render(view: "login", model: [message: "Constraseña Incorrecta"])
          }
      }else{*/
            render(view: "login", model: [message: "No existe el usuario ingresado"])
          }
      }
  }
    def logout() {
      session.usuario=null
      render(view: "/index")
    }
}