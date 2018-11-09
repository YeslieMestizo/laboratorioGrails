package tienda
import grails.rest.RestfulController

class ApiDisfracesController extends RestfulController<Disfraz> {
static responseFormats = ['xml','json']

    ApiDisfracesController() {
        super(Disfraz) //Indica al controlador REST qué clase de dominio considerar
    }

    def apiDisfracesEstado (String e) {
          if (e) {
            respond(model:[Disfraz.findAllByEstado(e)])
          }else {
          respond([message:"NO SE ENCONTRARON COINCIDENCIAS CON EL PARAMATRO INGRESADO"])
        }
      }

    def apiDisfracesTalle (String d) {
          if (d) {
            respond(model:[Disfraz.findAllByTalle(d)])
          }else {
          respond([message:"NO SE ENCONTRARON COINCIDENCIAS CON EL PARAMATRO INGRESADO"])
        }
      }

      def apiDisfracesGenero (String g) {
          if (g) {
            respond(model:[Disfraz.findAllByGenero(g)])
          }else {
            respond([message:"NO SE ENCONTRARON COINCIDENCIAS CON EL PARAMATRO INGRESADO"])
          }
        }

}
