<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo disfraz</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <h1>Nuevo Disfraz</h1>
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="well well-sm">
                <div class="panel-heading">
                    <h3 class="panel-title">
                      <g:if test="${message}">
                        <div class="message" role="status">${message}</div>
                      </g:if>
                        <span class="glyphicon glyphicon-log-in"></span>
                        Crear
                    </h3>
                    <g:uploadForm action="guardarAltaDisfraz">
                        <div class="form-group">
                                  <label for="descripcion">Descripci&oacute;n</label>
                                  <input type="text" class="form-control" id= "descripcion" name="descripcion" placeholder="Descripcion">
                        </div>
                              <div class="form-group">
                                  <label for="genero">Genero</label>
                                  <g:select name="genero" from="${['F','M']}" class="form-control"/>
                              </div>
                              <div class="form-group">
                                  <label for="talle">Talle</label>
                                  <g:select name="talle" from="${['XS','S','M','L','XL','XXL']}" class="form-control"/>
                              </div>
                              <div class="form-group">
                                  <label for="tipo">Tipo</label>
                                  <g:select from="${tipoList}" optionKey="id" optionValue="descripcion" name="tipo" class="form-control"/>
                              </div>
                              <div class="form-group">
                                <label for="imagen">Seleccionar Imagen</label>
                                  <input type="file" name="myFile" /> </br>
                                  <input type="submit" value="Aceptar" />
                              </div>
                    </g:uploadForm>
                </div>
            </div>
        </div>
    </div>
    <asset:javascript src="bootstrap.min.js" />
    <asset:javascript src="jquery-1.11.3.min.js" />
    <asset:javascript src="holder.min.js" />
    <asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
