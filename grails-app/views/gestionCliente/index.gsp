<%@page import="tienda.Items"%>


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
   
    <%
    Items carrito=null;
    if (session.getAttribute("carrito")== null) {  //si existe un carrito en la sesion, crea un carrito
        carrito=new Items();
        session.setAttribute("carrito", carrito);
    } else {
        carrito= (Items) session.getAttribute("carrito");
    }
    %>

<!--  barra de busqueda personalizada-->

<div class="container">
        <div class="row">
            <div class="col-sm-6">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            G&eacute;nero<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li ><g:link action="busquedaAlquiler" params="[campo:'F']"  >Femenino</g:link></li>
                        <li ><g:link action="busquedaAlquiler" params="[campo:'Mas']" >Masculino</g:link></li>
                        </ul>
                    </div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Talle <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><g:link action="busquedaAlquiler" params="[campo:'XS']" >XS</g:link></li>
                        <li><g:link action="busquedaAlquiler" params="[campo:'S']" >S</g:link></li>
                        <li><g:link action="busquedaAlquiler" params="[campo:'M']" >M</g:link></li>
                        <li><g:link action="busquedaAlquiler" params="[campo:'L']" >L</g:link></li>
                        <li><g:link action="busquedaAlquiler" params="[campo:'XL']" >XL</g:link></li>
                        <li><g:link action="busquedaAlquiler" params="[campo:'XXL']" >XXL</g:link></li>

                    </ul>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Tipo <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <g:each in="${tipoList}">
                            <li><g:link action="busquedaAlquiler" params="[campo: "${it.id}"]">${it.descripcion}</g:link></li>
                            </g:each>
                    </ul>
                </div>
            </div>   
            <div class="col-sm-6">                 
                <g:form action="busquedaAlquiler" class="navbar-form navbar-right" role="search">
                    <input type="text" name="descripcion" class="form-control" placeholder="Busqueda por descripcion...">
                    <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>Buscar</button>
                </g:form>
            </div>  
        </div>
    </div>
<!-- fin barra de busqueda personalizada-->
<div class="container">
    <g:each in="${listado}">
        <div class="col-md-4 portfolio-item">
            <h3>
                <a href="#">${it.disfraz.tipo.descripcion.toUpperCase()}</a>
            </h3>
            <img  src=${createLink(controller:"GestionCliente", action:"verImagen", id:"${it.disfraz.id}")} width=′300′ />
                  <p>Descripcion: ${it.disfraz.descripcion.toUpperCase()}</p>
                  <p>Talle: ${it.disfraz.talle}</p>
                  <p>Genero: ${it.disfraz.genero}</p>
                  <p>Tipo: ${it.disfraz.tipo.descripcion.toUpperCase()}</p>
                  <p>Precio: ${it.precio}</p>
                  <g:link controller="gestionCliente" action="agregarCarrito" class="glyphicon-plus btn btn-default" params="[id:it.id]" >Agregar Carrito</g:link>
                      </div>
            </g:each>
</div>
            <asset:javascript src="bootstrap.min.js" />
            <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
        <asset:javascript src="bootstrap.min.js" />
</body>
</html>