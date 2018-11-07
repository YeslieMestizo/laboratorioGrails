package tienda
import grails.converters.JSON
import java.text.SimpleDateFormat

class BootStrap {

    def init = { servletContext ->
<<<<<<< HEAD

        //Prueba cliente
        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:'532', password:'789', direccion:'bhj')
        client.save()

        //Prueba de administrador
        Administrador admin = new Administrador (nombre:'Yeslie', apellido:'Mestizo', usuario:'admin', password:'123', telefono:'4567')
        admin.save()
=======
//        //Prueba cliente
//        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:'532', password:'789', direccion:'bhj')
//        client.save()
//
//        //Prueba de administrador
//        Administrador admin = new Administrador (nombre:'Ana', apellido:'Mesa', usuario:'admin', password:'123', telefono:'4567')
//        admin.save()
>>>>>>> a8a647b553c1a3301070a7aaf98202275883057f
    }
    def destroy = {
    }
}
