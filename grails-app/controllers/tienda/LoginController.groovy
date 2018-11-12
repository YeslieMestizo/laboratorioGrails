package tienda
class LoginController {
    def index(){
        render(view: "login")
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
                    session.carrito = new Items()
                    redirect(controller: "gestionCliente", action: "index")
                    
                }

            } else {
                render(view: "login", model: [message: "Constraseña Incorrecta"])
            }
        }
    }

    def logout() {
        try{
        if(session.usuario.getRoles().any{it.authority=='CLIENTE'}) {
            session.carrito.clear()
        }
        session.usuario=null  
        render(view: "/index")
        }catch(MissingMethodException e){
            session.usuario=null  
            render(view: "/index")
        }
    }
}
