package tienda

class BootStrap {

    def init = { servletContext ->
<<<<<<< HEAD

        //TipoDisfraz tipo = new TipoDisfraz(descripcion:'Terror').save()
        //TipoDisfraz tipo2 = new TipoDisfraz(descripcion:'Infantil').save()
        //Cliente cliente1 =new Cliente(nombre:'aldana',apellido:'apellido',direccion:'los sasos',telefono:'333-435323',usuario:'al',password:'123').save()
        //Disfraz disfraz1 = new Disfraz(descripcion:'bruja',talle:'M',genero:'F',tipo:tipo).save()
        //Disfraz disfraz2 = new Disfraz(descripcion:'abeja',talle:'M',genero:'F',tipo:tipo2).save()
        //Items items = new Items(disfraces:disfraz1).save()
        //Alquiler alquiler = new Alquiler(fechaEntrega:Date.parse('yyyy-MM-dd','2019-11-13'),fechaDevolucion:Date.parse('yyyy-MM-dd','2019-11-13'),precio:30220,cliente:cliente1,items:items,estado:'Pendiente').save()
=======
<<<<<<< HEAD

=======
>>>>>>> 52dc15d55d727a4e6ca7ba5b61520ebc4ceded26
        TipoDisfraz tipo = new TipoDisfraz(descripcion:'Terror').save()
        TipoDisfraz tipo2 = new TipoDisfraz(descripcion:'Infantil').save()
        Cliente cliente1 =new Cliente(nombre:'aldana',apellido:'apellido',direccion:'los sasos',telefono:'333-435323',usuario:'al',password:'123').save()
        Disfraz disfraz1 = new Disfraz(descripcion:'bruja',talle:'M',genero:'F',tipo:tipo).save()
        Disfraz disfraz2 = new Disfraz(descripcion:'abeja',talle:'M',genero:'F',tipo:tipo2).save()
        Items items = new Items(disfraces:disfraz1).save()
        Alquiler alquiler = new Alquiler(fechaEntrega:Date.parse('yyyy-MM-dd','2019-11-13'),fechaDevolucion:Date.parse('yyyy-MM-dd','2019-11-13'),precio:30220,cliente:cliente1,items:items,estado:'Pendiente').save()
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea


        //Prueba cliente
        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:532, password:'789', direccion:'bhj')
        client.save()

        //Prueba de administrador
        Administrador admin = new Administrador (nombre:'Yeslie', apellido:'Mestizo', usuario:'admin', password:'123', telefono:4567)
        admin.save()

<<<<<<< HEAD
        //TipoDisfraz tipo = new TipoDisfraz(descripcion:'Terror')
        //TipoDisfraz tipo2 = new TipoDisfraz(descripcion:'Infantil')
        //tipo.save()
        //tipo2.save()

=======
>>>>>>> 7792c076265d1b00da70921332d0d897e45fabea
    }
    def destroy = {
    }
}