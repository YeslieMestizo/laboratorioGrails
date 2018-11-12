package tienda
import grails.converters.JSON
import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->

//        def usuario1 = new Usuario(nombreUsuario: "Admin" ,password: "12345",email: "admin@gmail.com")
//        if(!usuario1.save(flush: true)) {
//            usuario1.errors.each{
//                println it
//            }
//        }
//        
//        def rol1 = new Rol(authority: "ADMIN")
//        if(!rol1.save(flush: true)) {
//            rol1.errors.each{
//                println it
//            }
//        }
//        def usuarioRol1 = new UsuarioRol(usuario: usuario1, rol: rol1)
//        if(!usuarioRol1.save(flush: true)) {
//            usuarioRol1.errors.each{
//                println it
//            }
//        }        
//        def rol2 = new Rol(authority: "CLIENTE")
//        if(!rol2.save(flush: true)) {
//            rol2.errors.each{
//                println it
//            }
//        }


    }
    def destroy = {
    }
}
