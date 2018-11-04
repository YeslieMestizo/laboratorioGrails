package tienda

class BootStrap {

    def init = { servletContext ->
<<<<<<< HEAD
=======

>>>>>>> 4434afbfd13320d4f298a3c5e19a16ac0727cbd1
        //Prueba cliente
        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:'532', password:'789', direccion:'bhj')
        client.save()

        //Prueba de administrador
        Administrador admin = new Administrador (nombre:'Yeslie', apellido:'Mestizo', usuario:'admin', password:'123', telefono:'4567')
        admin.save()
<<<<<<< HEAD

=======
>>>>>>> 4434afbfd13320d4f298a3c5e19a16ac0727cbd1
    }
    def destroy = {
    }
}
