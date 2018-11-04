package tienda
import grails.validation.ValidationException

class LoginController {
    LoginService loginService

    def index(){
        render(view: "login")
    }
<<<<<<< HEAD
    def login(){
        if (request.get){
            return render(view: 'login')
        }
        def u = Cliente.findByUsuario(params.usuario)
        def a = Administrador.findByUsuario(params.usuario)
        if(u){
            if (u.password == u.password) {
                session.usuario = u
                render(view: "/index")
            
            }else{
                render(view: "login", model: [message: "Constraseña Incorrecta"])
            }
=======
      def u = Cliente.findByUsuario(params.usuario)
      def a = Administrador.findByUsuario(params.usuario)
      if(u){
        if (u.password == u.password) {
            session.usuario = u
            //render(view: "/index")
            redirect(controller:"gestionCliente", action:"index")
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
        }else{
            if(a){
                if(a.password == a.password){
                    session.usuario = a

                    redirect(controller:"gestionAdmin", action:"index")

                }else{
                    render(view: "login", model: [message: "Constraseña Incorrecta"])
                }
            }else{
                render(view: "login", model: [message: "No existe el usuario ingresado"])
            }
        }
<<<<<<< HEAD
    }
    def logout() {
        session.usuario=null
        render(view: "/index")
    }
}
=======
      }else{
          if(a){
              if(a.password == a.password){
                session.usuario = a
                redirect(controller:"gestionAdmin",action:"index")
              }else{
                render(view: "login", model: [message: "Constraseña Incorrecta"])
              }
          }else{

          }
      }
  }
    def logout() {
      session.usuario=null
      render(view: "/index")
    }
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
    }*/
}
>>>>>>> ed8100a2882d27a75585bd932bef472838636329
