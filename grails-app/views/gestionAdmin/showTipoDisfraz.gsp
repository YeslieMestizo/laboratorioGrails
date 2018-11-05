<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de Cliente</title>
<<<<<<< HEAD
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <g:link controller="gestionAdmin" action="altaTipoDisfraz" class="glyphicon-plus btn btn-default">Agregar</g:link>

    <h1>Gesti&oacute;n de Tipo de Disfraz</h1><br>
    
   
    <div class="col-sm-8">
        <div class="container">
            <table class="table table-hover">
                <tr class="info">
                    <th>C&oacute;digo</th>
                    <th>Descripci&oacute;n</th>
                    <th></th>
                    <th></th>
                </tr>
                <g:each in="${listado?}">
=======
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
      <div class="col-sm-6">
          <g:form action="busquedaTipoDisfraz" class="navbar-form navbar-right" role="search">
              <input type="text" name="descripcion" class="form-control" placeholder="Buscar por descripci&oacute;n...">
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
>>>>>>> 5d210f3eecc12834c091d5cfe36019ead3c8dc3e
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.descripcion}</td>
                        <td><g:link action="editarTipoDisfraz" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                        <td><g:link action="darBajaTipoDisfraz" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                        </tr>
                </g:each>
            </table>
        </div>
    </div>
    <g:if test="${tipoDisfrazE}">
        <div class="col-sm-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-log-in"></span> 
                        Editar
                    </h3>
                </div>
                <div class="well well-sm">
                    <g:form action="actualizarTipoDisfraz" method="post">
                        <g:hiddenField name="version" value="${this.tipoDisfrazE?.version}" />
                        <g:hiddenField name="id" value="${this.tipoDisfrazE?.id}" />
                        <div class="form-group">
                            <label for="descripcion">Descripci&oacute;n</label>
                            <input type="text" class="form-control" name="descripcion" value="${tipoDisfrazE.descripcion}">
                        </div>
                        <input type="submit" name="enviar" value="Guardar" class="btn btn-default" />
                        <a href="javascript:window.history.back();" class="btn btn-default">Cancelar</a>
                    </g:form>
                </div>
            </div>

<<<<<<< HEAD
        </div>
    </g:if>
    <g:if test="${tipoDisfraz}">
        <div class="col-sm-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-log-in"></span> 
                        Crear
                    </h3>
                </div>
                <div class="well well-sm">
                    <g:form action="guardarAltaTipoDisfraz" method="post">
                        <div class="form-group">
                            <label for="descripcion">Descripci&oacute;n</label>
                            <input type="text" class="form-control" name="descripcion" placeholder="descripcion">
                        </div>
                        <input type="submit" name="enviar" value="Guardar" class="btn btn-default" />
                        <a href="javascript:window.history.back();" class="btn btn-default">Cancelar</a>

                    </g:form>
                </div>
            </div>
        </div>
    </g:if>

<asset:javascript src="bootstrap.min.js" />    
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
=======

        <asset:javascript src="bootstrap.min.js" />
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>
>>>>>>> 5d210f3eecc12834c091d5cfe36019ead3c8dc3e
