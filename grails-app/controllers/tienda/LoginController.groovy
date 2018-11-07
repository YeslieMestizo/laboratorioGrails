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
            if (u.password == params.password){
                session.usuario = u
                redirect(controller:"GestionCliente", action:"index")
            }else{
            render(view: "login", model: [message: "Constrase\u00f1a Incorrecta"])
            }
        }else{
            if(a){
                if(a.password == params.password){
                    session.usuario = a
                    redirect(controller:"GestionAdmin", action:"index")
                }else{
                    render(view: "login", model: [message: "Constrase\u00f1a Incorrecta"])
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
