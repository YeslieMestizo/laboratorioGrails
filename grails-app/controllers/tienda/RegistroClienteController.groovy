package tienda

class RegistroClienteController {
    def index(){
        render(view:"registro",model:[cliente:new Cliente()])
    }
    def registro() {
        if(request.method == 'POST') {
            def c = new Cliente(nombre:params.nombre, apellido:params.apellido, usuario:params.usuario,telefono:params.telefono,direccion:params.direccion,estado:"activo")
        
            if(params.password != params.confirmacion) {
                //c.errors.rejectValue("password", "cliente.password.dontmatch")
                return [cliente:c, message:"No verifica la contraseña"]
            }
            else if(c.save(flush:true)) {
                //session.cliente = c
                def usuario = new Usuario(nombreUsuario: params.nombre ,password: params.password,email: params.usuario)
                if(!usuario.save(flush: true)) {
                    usuario.errors.each{
                        println it
                    }
                }
                def rol = Rol.findByAuthority("CLIENTE")     

                def usuarioRol = new UsuarioRol(usuario: usuario, rol: rol)
                if(!usuarioRol.save(flush: true)) {
                    usuarioRol.errors.each{
                        println it
                    }
                }
                
                redirect(controller:"Login", action:"index")
            }
            else {
                return [cliente:c]
            }
        }
    }
    
    void crearUsario(String nombre,String pass, String mail){
        def usuario = new Usuario(nombreUsuario: nombre ,password: pass,email: mail)
        if(!usuario.save(flush: true)) {
            usuario.errors.each{
                println it
            }
        }
        def rol = Rol.findByAuthority("CLIENTE")     

        def usuarioRol = new UsuarioRol(usuario: usuario, rol: rol)
        if(!usuarioRol.save(flush: true)) {
            usuarioRol.errors.each{
                println it
            }
        }
               
    }
    
    
}
