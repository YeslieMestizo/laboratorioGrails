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
=======
<<<<<<< HEAD
=======

>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
>>>>>>> 349ccc9fff117a4b9f49b751eeb7cc0ea19327e0
            session.usuario = u
            //render(view: "/index")
            redirect(controller:"gestionCliente", action:"index")
        }else{
            render(view: "login", model: [message: "Constraseña Incorrecta"])
        }
      }else{
          if(a){
              if(a.password == a.password){
                session.usuario = a
<<<<<<< HEAD
                redirect(controller:"gestionAdmin",action:"index")
=======
<<<<<<< HEAD
                redirect(controller: "gestionAdmin" ,action: "index")
=======
<<<<<<< HEAD
                redirect(controller:"gestionAdmin",action:"index")
=======
                redirect(controller:"gestionAdmin", action:"index")
>>>>>>> df0c17c9c6ad0a2b8d8d22bbf23a160842dbbcd2
>>>>>>> 29bf403ea6de6e7d137a798c8143763d070878f8
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
              }else{
                render(view: "login", model: [message: "Constraseña Incorrecta"])
<<<<<<< HEAD
              }
          }else{
      /*if(a){
          if(a.password == a.password) {
            session.administrador = a
            render(view: "/gestionAdmin/index")
          }else{
            render(view: "login", model: [message: "Constraseña Incorrecta"])
=======
>>>>>>> 349ccc9fff117a4b9f49b751eeb7cc0ea19327e0
          }
      }else{
            render(view: "login", model: [message: "No existe el usuario ingresado"])
          }
      }
  }
    def logout() {
      session.usuario=null
      render(view: "/index")
    }
}
