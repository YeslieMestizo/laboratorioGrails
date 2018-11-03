package tienda

class ImagenController {

    def index() {
      redirect action: "cargar"
      }

      def cargar(){

    }
    def grabar={
        def file = request.getFile('myFile')
        def img = new Imagen(imagen:file,nombre:params.nombre).save(flush:true)
        img.save(flush:true)
        if (img.hasErrors()) {
            img.errors.allErrors.each {
                println it
            }
        }
        redirect action:"mostrar", params: [id: img.id]
    }
    def mostrar={
    }
    def verImagen = {
      def img = Imagen.get(params.id)
      response.outputStream << img.imagen
      response.outputStream.flush()
    }   
}
