<!DOCTYPE html>
<html>
    <head>        
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gesti&oacute;n Cat&aacute;logo</title>
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <h1>Gesti&oacute;n Cat&aacute;logo</h1>
    <div class="container-fluid"> 
        <div class="col-sm-9">
            <h2>Cat&aacute;logo</h2>
            <table class="table table-hover" style="height:40px;">
                <tr class="info">
                    <th>C&oacute;digo</th>
                    <th>Descripci&oacute;n</th>
                    <th>Talle</th>
                    <th>G&eacute;nero</th>
                    <th>Tipo</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                    <th></th>
                    <th></th>
                </tr>
                <g:each in="${listaCatalogo}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.disfraz.descripcion}</td>
                        <td>${it.disfraz.talle}</td>
                        <td>${it.disfraz.genero}</td>
                        <td>${it.disfraz.tipo.descripcion}</td>
                        <td>${it.cantidad}</td>
                        <td>${it.precio}</td>
                        <td><g:link action="editarDisfrazCatalogo" id="${it.id}" class="btn btn-info">Editar</g:link></td>
                        <td><g:link action="eliminarDisfrazCatalogo" id="${it.id}" class="btn btn-info">Eliminar</g:link></td>
                        </tr>
                </g:each>
            </table>
        </div>
        <div class="col-sm-3"> 
            <g:if test="${catalogo}">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">
                            <span class="glyphicon glyphicon-log-in"></span> 
                            Editar
                        </h2>
                    </div>

                    <div class="well well-sm">        
                        <g:form action="actualizarCatalogo" method="post">
                            <g:hiddenField name="version" value="${this.catalogo?.version}" />
                            <g:hiddenField name="id" value="${this.catalogo?.id}" />
                            <div class="form-group">
                                <label for="disfraz">Producto</label>
                                <g:select from="${catalogo.disfraz}" optionKey="id" optionValue="id" name="disfraz" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="cantidad">Cantidad</label>
                                <input type="number" class="form-control" name="cantidad" value="${catalogo.cantidad}" >
                            </div>
                            <div class="form-group">
                                <label for="precio">Precio</label>
                                <input type="number" class="form-control" name="precio" value="${catalogo.precio}" >
                            </div>
                            <input type="submit" name="enviar" value="Guardar" class="btn btn-default"/>
                            <a href="javascript:window.history.back();" class="btn btn-default">Cancelar</a>

                        </g:form>
                    </div>
                </div>
            </g:if>
        </div>
    </div><br><br>
    <div class="container-fluid">
        <div class="col-sm-9"> 
            <h2>Añadir Productos</h2>
            <table class="table table-borderless table-data3">
                <tr class="info">
                    <th>C&oacute;digo</th>
                    <th>Descripci&oacute;n</th>
                    <th>Talle</th>
                    <th>G&eacute;nero</th>
                    <th>Tipo</th>
                    <th>Stock</th>
                </tr>
                <g:each in="${listaDisfraz}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.descripcion}</td>
                        <td>${it.talle}</td>
                        <td>${it.genero}</td>
                        <td>${it.tipo.descripcion}</td>
                        <td><g:link action="agregarDisfrazCatalogo" id="${it.id}" class="btn btn-info">agregar</g:link></td>
                        </tr>
                </g:each>
            </table>
        </div>
        <div class="col-sm-3"> 
            <g:if test="${disfraz}">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">
                            <span class="glyphicon glyphicon-log-in"></span> 
                            Añadir
                        </h2>
                    </div>

                    <div class="well well-sm">        
                        <g:form action="guardarDisfrazCatalogo" method="post">
                            <div class="form-group">
                                <label for="disfraz">Producto</label>
                                <g:select from="${disfraz}" optionKey="id" optionValue="id" name="disfraz" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="cantidad">Cantidad</label>
                                <input type="number" class="form-control" name="cantidad" >
                            </div>
                            <div class="form-group">
                                <!--<label for="precio">Precio</label>-->
                                <p:inputNumber name="precio" value="#{inputNumberView.precio}" symbol="%"                                 symbolPosition="s" required="true" emptyValue="empty">

                                </p:inputNumber>
                                <input type="number" step="any" class="form-control" name="precio" >
                            </div>
                            <input type="submit" name="enviar" value="Guardar" class="btn btn-default"/>
                        </g:form>
                    </div>
                </div>
            </g:if>
        </div>
    </div>
</div>

<label></label>
<asset:javascript src="bootstrap.min.js" />    
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>