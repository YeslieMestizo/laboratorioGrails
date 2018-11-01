package tienda

import grails.gorm.transactions.Transactional

@Transactional
class LoginService {

    def serviceMethod() {

    }

    Cliente buscarUsuario(String us){
    def cliente = Cliente.find( new Cliente(usuario:us) )
    return cliente
    }

    Administrador buscarAdmin(String us){
    def admin = Administrador.find(new Administrador(usuario:us))
    return administrador
    }
}
