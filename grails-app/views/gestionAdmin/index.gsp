<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Administrador</title>
        <asset:stylesheet src="bootstrap.min.css" />
        <asset:stylesheet src="custom.css" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                     <g:link controller="GestionAdmin" action="showAdministrador" class="btn btn-primary btn-lg btn-block">I N F O - A D M I N</g:link>
                </div>
                <div class="col-md-4">
                    <g:link controller="GestionAdmin" action="showCatalogo" class="btn btn-success btn-lg btn-block">C A T &Aacute; L O G O</g:link>
                </div>
                <div class="col-md-4">
                    <g:link controller="GestionAdmin" action="showDisfraz" class="btn btn-primary btn-lg btn-block">D I S F R A C E S</g:link>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                     <g:link controller="GestionAdmin" action="showAlquiler" class="btn btn-success btn-lg btn-block">A L Q U I L E R</g:link>
                </div>
                <div class="col-md-4">
                    <g:link controller="GestionAdmin" action="showCliente" class="btn btn-primary btn-lg btn-block">C L I E N T E S</g:link>
                </div>
                <div class="col-md-4">
                    <g:link controller="GestionAdmin" action="showTipoDisfraz" class="btn btn-success btn-lg btn-block">T I P O S - D E - D I S F R A C E S</g:link>
                </div>
            </div>
        </div>
<!---->
        <hr>
        

    <div class="container">    
        <div class="col-md-4">
            <div class="card">
                <div class="card-header bg-info">
                    <strong class="card-title text-light">CANTIDAD DE CLIENTES</strong>
                    
                </div>
                <div class="card-body text-white bg-success">
                    <p class="card-text text-light">${nroCliente}
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card">
                <div class="card-header bg-success">
                    <strong class="card-title text-light">CANTIDAD DE VENTA</strong>
                </div>
                <div class="card-body text-white bg-info">
                    <p class="card-text text-light">${nroAlquiler}
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header bg-info">
                    <strong class="card-title text-light">I T E M S</strong>
                </div>
            <div class="card-body text-white bg-success">
                <p class="card-text text-light">${nroDisfraz}
                </p>
            </div>
        </div>
    </div>
        <div class="page-container">
            <div class="col-md-4">
            <div class="card">
                <div class="card-header bg-info">
                    <strong class="card-title text-light">Ganancias</strong>
                </div>
            <div class="card-body text-white bg-success">
                <p class="card-text text-light">${ganancia}
                </p>
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