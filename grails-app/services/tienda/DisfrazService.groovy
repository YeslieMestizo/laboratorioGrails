package tienda

import grails.gorm.services.Service

@Service(Disfraz)
interface DisfrazService {

    Disfraz get(Serializable id)

    List<Disfraz> list(Map args)

    Long count()

    void delete(Serializable id)

    Disfraz save(Disfraz disfraz)

}