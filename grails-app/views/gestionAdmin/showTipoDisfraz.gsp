<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Cliente</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
      <div class="col-sm-6">
          <g:form action="busquedaTipoDisfraz" class="navbar-form navbar-right" role="search">
              <input type="text" name="descripcion" class="form-control" placeholder="Busqueda por descripcion...">
              <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>Buscar</button>
          </g:form>
      </div>
        <h1>Gesti&oacute;n de Tipo de Disfraz</h1><br>
        <div class="table-responsive m-b-40">
            <div class="container">
                <table class="table table-hover">
                    <tr class="info">
                        <th>C&oacute;digo</th>
                        <th>Descripci&oacute;n</th>
                        <th></th>
                        <th></th>
                    </tr>
                    <g:each in="${listado?}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.descripcion}</td>
                        <td><g:link action="editarTipoDisfraz" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                        <td><g:link action="darBajaTipoDisfraz" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                    </tr>
                    </g:each>
                </table>
            </div>


        <asset:javascript src="bootstrap.min.js" />
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>
