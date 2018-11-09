package tienda
import grails.converters.JSON
import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
<<<<<<< HEAD
=======
<<<<<<< HEAD
        //        //Prueba cliente
        //        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:'532', password:'789', direccion:'bhj')
        //        client.save()
        //
        //        //Prueba de administrador
        //        Administrador admin = new Administrador (nombre:'Ana', apellido:'Mesa', usuario:'admin', password:'123', telefono:'4567')
        //        admin.save()

//        def usuario1 = new Usuario(nombreUsuario: "Ruth" ,password: "12345",email: "ruth@gmail.com")
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
//
//        def usuarioRol1 = new UsuarioRol(usuario: usuario1, rol: rol1)
//        if(!usuarioRol1.save(flush: true)) {
//            usuarioRol1.errors.each{
//                println it
//            }
//        }
//
//        def usuario2 = new Usuario(nombreUsuario: "Alison" ,password: "12345",email: "alison@gmail.com")
//        if(!usuario2.save(flush: true)) {
//            usuario2.errors.each{
//                println it
//            }
//        }
//
//        def rol2 = new Rol(authority: "CLIENTE")
//        if(!rol2.save(flush: true)) {
//            rol2.errors.each{
//                println it
//            }
//        }
//
//        def usuarioRol2 = new UsuarioRol(usuario: usuario2, rol: rol2)
//        if(!usuarioRol2.save(flush: true)) {
//            usuarioRol2.errors.each{
//                println it
//            }
//        }
//
//        def usuario3 = new Usuario(nombreUsuario: "Yeslie" ,password: "12345",email: "yeslie@gmail.com")
//        if(!usuario3.save(flush: true)) {
//            usuario3.errors.each{
//                println it
//            }
//        }
//
//        def rol3 = new Rol(authority: "CLIENTE")
//        if(!rol3.save(flush: true)) {
//            rol3.errors.each{
//                println it
//            }
//        }
//
//        def usuarioRol3 = new UsuarioRol(usuario: usuario3, rol: rol3)
//        if(!usuarioRol3.save(flush: true)) {
//            usuarioRol3.errors.each{
//                println it
//            }
//        }
        
=======
<<<<<<< HEAD
>>>>>>> a1e647305293c522db912bf67d61331a111f86cf

        //Prueba cliente
        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:'532', password:'789', direccion:'bhj')
        client.save()

        //Prueba de administrador
        Administrador admin = new Administrador (nombre:'Yeslie', apellido:'Mestizo', usuario:'admin', password:'123', telefono:'4567')
        admin.save()
<<<<<<< HEAD
=======
=======
//        //Prueba cliente
//        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:'532', password:'789', direccion:'bhj')
//        client.save()
//
//        //Prueba de administrador
//        Administrador admin = new Administrador (nombre:'Ana', apellido:'Mesa', usuario:'admin', password:'123', telefono:'4567')
//        admin.save()
>>>>>>> a8a647b553c1a3301070a7aaf98202275883057f
>>>>>>> d168a23818e80d95f96e36f939b3be7e5df9721e
>>>>>>> a1e647305293c522db912bf67d61331a111f86cf
    }
    def destroy = {
    }
}
