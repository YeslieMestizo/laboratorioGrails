package tienda

class RegistroClienteController {
    def index(){
        render(view:"registro",model:[cliente:new Usuario()])
    }
    def registro() {
        try{
        if(request.method == 'POST') {
            def usuario = new Usuario(nombreUsuario:params.nombreUsuario, email:params.email,password:params.password,estado:"activo")
        
            if(usuario.password != params.confirmacion) {
                return [cliente:usuario, message:"No verifica la contraseña"]
            }else{
                if(usuario != null){
                    usuario.save(flush:true)
                    def rol = Rol.findByAuthority("CLIENTE") 
                    def usuarioRol = new UsuarioRol(usuario: usuario, rol: rol)
                    if(!usuarioRol.save(flush: true)) {
                        usuarioRol.errors.each{
                        println it
                    }
                    }else{
                        redirect(controller:"Login", action:"index")
                    }               
                    
                }else{
                    usuario.errors.each{
                        println it
                    }
                    render(view:"registro",model: [cliente:usuario,message:"Ingrese datos validos"])
                }
            }                   

                
            }
                
            }catch(NullPointerException e){
            render(view:"registro",model:[message:"Usuario Registrado"])
        }
        
    }
}
    
