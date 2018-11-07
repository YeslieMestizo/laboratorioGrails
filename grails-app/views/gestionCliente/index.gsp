<%@page import="tienda.Alquiler"%>


<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainClient"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card-body">
                    <ul class="list-unstyled">
                        <li>
                            <g:link controller="GestionCliente" action="showCliente" class="btn btn-primary btn-lg btn-block">D A T O S - C L I E N T E</g:link>
                            </li>
                        </ul>
                    </div>
                </div>

            <div class="col-lg-4">
                <div class="card-body">
                    <ul class="list-unstyled">
                        <li>
                            <g:link controller="GestionCliente" action="showCarrito" class="btn btn-success btn-lg btn-block">C A R R I T O</g:link>
                            </li>
                        </ul>
                    </div>
                </div>

            <div class="col-lg-4">
                <div class="card-body">
                    <ul class="list-unstyled">
                        <li>
                            <g:link controller="GestionCliente" action="showPago" class="btn btn-primary btn-lg btn-block">L I S T A - P R O D U C T O S</g:link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<%
        Alquiler carrito=null;
        if (session.getAttribute("carrito")== null) {  //si existe un carrito en la sesion, crea un carrito
            carrito=new Alquiler();
            session.setAttribute("carrito", carrito);
        } else {
        carrito= (Alquiler) session.getAttribute("carrito");
        }
    %>

    <g:each in="${listaCatalogo}">
        <div class="col-md-4 portfolio-item">
            <h3>
                <a href="#">${it.disfraz.tipo.descripcion.toUpperCase()}</a>
            </h3>
            <img  src=${createLink(controller:"GestionCliente", action:"verImagen", id:"${it.disfraz.id}")} width=′300′ />
                  <p>${it.disfraz.descripcion.toUpperCase()}</p>
                  <g:link controller="gestionCliente" action="agregarCarrito" class="glyphicon-plus btn btn-default" params="[id:it.id]" >Agregar Carrito</g:link>
                      </div>
            </g:each>

            <asset:javascript src="bootstrap.min.js" />
            <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>