<%@page import="tienda.Alquiler"%>
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
        Alquiler carrito=null;
        if (session.getAttribute("carrito")== null) {  //si existe un carrito en la sesion, crea un carrito
            carrito=new Alquiler();
            session.setAttribute("carrito", carrito);
        } else {
        carrito= (Alquiler) session.getAttribute("carrito");
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
        </div>
        <div class="col-sm-9">
            <table class="table table-borderless table-data3">
                <tr>
                    <th>Descripci&oacute;n</th>
                    <th>Talle</th>
                    <th>G&eacute;nero</th>
                    <th>Tipo</th>
                    <th>Cantidad</th>
                    <th>Precio Unitario</th>
                </tr>
                <g:each in="${carrito.items}">
                    <tr>
                        <td>${it.disfraz.descripcion}</td>
                        <td>${it.disfraz.talle}</td>
                        <td>${it.disfraz.genero}</td>
                        <td>${it.disfraz.tipo.descripcion}</td>
                        <td><input type="number" name="cantidad" min=1 max=8></td>
                        <td>kkk</td>
                        <td><g:link action="eliminarItems" id="${it.id}">Eliminar</g:link></td>
                        </tr>
                </g:each>
                <tr>
                    <td>Total a pagar</td>
                    <td>${carrito.total()}</td>
                <tr>
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
