<%@page import="tienda.Items"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainClient"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alquiler</title>
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <h1>Carrito</h1>
    <g:link controller="gestionCliente" action="masCompra" class="glyphicon-plus btn btn-default"  >Agregar Carrito</g:link>
    <%
Items carrito=null;
if (session.getAttribute("carrito")== null) {  //si existe un carrito en la sesion, crea un carrito
    carrito=new Items();
    session.setAttribute("carrito", carrito);
} else {
    carrito= (Items) session.getAttribute("carrito");
}
%>

    <div class="container-fluid">
        <div class="col-sm-3">
            <div class="container-fluid">
                <label>Nombre: ${session.usuario.nombre}</label><br>
                <label>Apellido: ${session.usuario.apellido}</label><br>
                <label>Nombre: ${session.usuario.direccion}</label><br>
                <label>Nombre: ${session.usuario.telefono}</label> <br>           
            </div>
            <g:form action="guardarAlquiler" method="post">
                <div class="form-group">
                    <label for="fechaEntrega">Fecha de Entrega</label>
                    <g:datePicker name="fechaEntrega" value="${new Date()}" precision="day" years="${2018..2050}"/>
                    <!--<input type="date" class="form-control" name="fechaEntrega" class="au-input au-input--full"-->
                </div>
                <div class="form-group">
                    <label for="fechaDevolucion">Fecha de Devolucion</label>
                    <g:datePicker name="fechaDevolucion" value="${new Date()}" precision="day" years="${2018..2050}"/>
                    <!--input type="date" class="form-control" name="fechaDevolucion"  class="au-input au-input--full"-->
                </div>
                <input type="submit" name="enviar" value="Confirmar Alquiler" class="btn btn-default" />
            </g:form>
        </div>
        <div class="col-sm-9">
            <table class="table table-borderless table-data3">
                <tr>
                    <th>Descripci&oacute;n</th>
                    <th>Talle</th>
                    <th>G&eacute;nero</th>
                    <th>Tipo</th>
                    <th>Precio Unitario</th>
                </tr>
                <g:each in="${carrito.items}">
                    <tr>
                        <td>${it.disfraz.descripcion}</td>
                        <td>${it.disfraz.talle}</td>
                        <td>${it.disfraz.genero}</td>
                        <td>${it.disfraz.tipo.descripcion}</td>
                        <td>${it.precio}</td>
                        <td><g:link action="eliminarItems" params="[id:it.id]">Eliminar</g:link></td>
                        </tr>
                </g:each>
                <tr>
                    <td>Total a pagar</td>
                    <td>${carrito.total()}</td>
                </tr>
            </table>
            
        </div>
    </div>
    <label></label>
<asset:javascript src="bootstrap.min.js" />
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
