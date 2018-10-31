package tienda

class BootStrap {

    def init = { servletContext ->
        TipoDisfraz tipo = new TipoDisfraz(descripcion:'Terror')
        TipoDisfraz tipo2 = new TipoDisfraz(descripcion:'Infantil')
        tipo.save()
        tipo2.save()
    }
    def destroy = {
    }
}
