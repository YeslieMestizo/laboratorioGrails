package tienda

class BootStrap {

    def init = { servletContext ->
<<<<<<< HEAD


=======
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======
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
>>>>>>> df0c17c9c6ad0a2b8d8d22bbf23a160842dbbcd2
>>>>>>> 29bf403ea6de6e7d137a798c8143763d070878f8
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
        TipoDisfraz tipo = new TipoDisfraz(descripcion:'Terror').save()
        TipoDisfraz tipo2 = new TipoDisfraz(descripcion:'Infantil').save()
        Cliente cliente1 =new Cliente(nombre:'aldana',apellido:'apellido',direccion:'los sasos',telefono:'333-435323',usuario:'al',password:'123').save()
        Disfraz disfraz1 = new Disfraz(descripcion:'bruja',talle:'M',genero:'F',tipo:tipo).save()
        Disfraz disfraz2 = new Disfraz(descripcion:'abeja',talle:'M',genero:'F',tipo:tipo2).save()
        Items items = new Items(disfraces:disfraz1).save()
        Alquiler alquiler = new Alquiler(fechaEntrega:Date.parse('yyyy-MM-dd','2019-11-13'),fechaDevolucion:Date.parse('yyyy-MM-dd','2019-11-13'),precio:30220,cliente:cliente1,items:items,estado:'Pendiente').save()
<<<<<<< HEAD


=======
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b

        //Prueba cliente
        Cliente client = new Cliente (nombre:'Guisel', apellido:'Montaño', usuario:'lulo', telefono:'532', password:'789', direccion:'bhj')
        client.save()

        //Prueba de administrador
        Administrador admin = new Administrador (nombre:'Yeslie', apellido:'Mestizo', usuario:'admin', password:'123', telefono:'4567')
        admin.save()
<<<<<<< HEAD

=======
>>>>>>> e19e2553e3733b3d2c98f1d520df00a5f12ff16b
    }
    def destroy = {
    }
}
