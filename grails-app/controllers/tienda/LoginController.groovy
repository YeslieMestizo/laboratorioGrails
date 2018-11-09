package tienda
class LoginController {
 def index(){
     redirect action:"login"
 }
    
  def login() {
   if (request.get) {
     return render(view: 'login')
   }
<<<<<<< HEAD


    def u = Usuario.findByEmail(params.email)
=======
<<<<<<< HEAD


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
=======

<<<<<<< HEAD

    def u = Usuario.findByEmail(params.email)
    //def roles = Usuario.getRoles()
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba

     if (u) {
       if (u.password == u.generateMD5_A(params.password)) {
          session.usuario = u
<<<<<<< HEAD
=======
          //if(roles.authority=="ADMINISTRADOR"){
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba
          if(session.usuario.getRoles().any{it.authority=='ADMIN'}) {
            redirect(controller: "gestionAdmin", action: "index")
          }
          else{
<<<<<<< HEAD
              session.datos = Cliente.findByUsuario(params.email)
              println session.datos
            redirect(controller: "gestionCliente", action: "index")
            
          }

        } else {
          render(view: "login", model: [message: "Constraseña Incorrecta"])
=======
            redirect(controller: "gestionCliente", action: "index")
          }



        } else {
          render(view: "login", model: [message: "Constraseña Incorrecta"])
=======
    def index(){
        render(view: "login")
    }
    def login(){
        if (request.get){
            return //render(view: 'login')
        }
        def u = Cliente.findByUsuario(params.usuario)
        //def u = Cliente.findByUsuario("from Cliente as c where c.id = :vid", [vid:params.id])
        def a = Administrador.findByUsuario(params.usuario)
        //def a = Administrador.findByUsuario("from Administrador as a where a.id = :vid", [vid:params.id])
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
>>>>>>> d168a23818e80d95f96e36f939b3be7e5df9721e
>>>>>>> df3574264bd979ae2abbe2844a40ec56077270bd
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba
        }
      } else {
        render(view: "login", model: [message: "No existe el usuario ingresado"])
      }
    }

    def logout() {
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba
        if(session.usuario.getRoles().any{it.authority=='CLIENTE'}) {
            session.carrito.items.clear()
          }
      session.usuario=null
      session.datos = null      
<<<<<<< HEAD
=======
=======
      session.usuario=null
>>>>>>> df3574264bd979ae2abbe2844a40ec56077270bd
>>>>>>> 7396376f1cbbff08f3103867ea0d5f770ea24eba
      render(view: "/index")
    }
}
