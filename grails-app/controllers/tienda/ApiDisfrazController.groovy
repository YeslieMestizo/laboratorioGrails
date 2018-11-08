package tienda
import grails.rest.RestfulController
class ApiDisfrazController extends RestfulController<Disfraz> {
  static responseFormats = ['json', 'xml']


  ApiDisfrazController() {
    super(Disfraz) //Indica al controlador REST qué clase de dominio considerar
  }


  def lista (String p) {
      if (p) {
      respond Disfraz.findAllByTalle(p)
      }
      else {
      respond([])
      }
    }

    def listado (String p) {
        if (p) {
        respond Disfraz.findAllByGenero(p)
        }
        else {
        respond([])
        }
      }
}
