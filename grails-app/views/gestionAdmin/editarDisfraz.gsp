<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
        
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <h1>Editar</h1>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <div class="well well-sm">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <span class="glyphicon glyphicon-log-in"></span>
                            Editar
                        </h3>
                        <g:uploadForm action="actualizarDisfraz">
                            <g:hiddenField name="version" value="${this.disfraz?.version}" />
                            <g:hiddenField name="id" value="${this.disfraz?.id}" />
                            <div class="form-group">
                                <label for="descripcion">Descripci&oacute;n</label>
                                <input type="text" class="form-control" name="descripcion" value="${disfraz.descripcion}">
                            </div>
                            <div class="form-group">
                                <label for="genero">Genero</label>
                                <g:select name="genero" from="${['F','M']}" class="form-control" value="${disfraz.genero}" />
                            </div>
                            <div class="form-group">
                                <label for="talle">Talle</label>
                                <g:select name="talle" from="${['XS','S','M','L','XL','XXL']}" class="form-control" value="${disfraz.talle}" />
                            </div>
                            <div class="form-group">
                                <label for="tipo">Tipo</label>
                                <g:select from="${tipoList}" optionKey="id" optionValue="descripcion" name="tipo" class="form-control" valueMessagePrefix="${disfraz.tipo.descripcion}" />
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