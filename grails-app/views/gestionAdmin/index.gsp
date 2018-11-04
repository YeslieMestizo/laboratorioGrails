<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
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
                                <g:link controller="GestionAdmin" action="showAdministrador" class="btn btn-primary btn-lg btn-block">D A T O S - A D M I N I S T R A D O R</g:link></li>
                            <li>
                                <g:link controller="GestionAdmin" action="showAlquiler" class="btn btn-success btn-lg btn-block">A L Q U I L E R</g:link></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="card-body">
                        <ul class="list-unstyled">
                            <li>
                                <g:link controller="GestionAdmin" action="showCatalogo" class="btn btn-success btn-lg btn-block">C A T &Aacute; L O G O</g:link></li>
                            <li>
                                <g:link controller="GestionAdmin" action="showCliente" class="btn btn-primary btn-lg btn-block">C L I E N T E S</g:link></li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="card-body">
                        <ul class="list-unstyled">
                            <li>
                                <g:link controller="GestionAdmin" action="showDisfraz" class="btn btn-primary btn-lg btn-block">D I S F R A C E S</g:link></li>
                            <li>
                                <g:link controller="GestionAdmin" action="showTipoDisfraz" class="btn btn-success btn-lg btn-block">T I P O S - D E - D I S F R A C E S</g:link></li>
                        </ul>
                    </div>
                </div>
            </div>
         </div>
        
        <hr>
        <div class="page-container">
            <div class="col-sm-4">
                <div style="background-color: cyan;">
                    Cantidad de usuario
                </div>
                
            </div>
            <div class="col-sm-4">
                <div>
                    Items
                </div>
                
            </div>
            <div class="col-sm-4">
                <div>
                    Cantidad de venta
                </div>
            </div>
        </div>
        <asset:javascript src="bootstrap.min.js" />    
        <asset:javascript src="jquery-1.11.3.min.js" />
        <asset:javascript src="holder.min.js" />
        <asset:javascript src="ie10-viewport-bug-workaround.js" />
    </body>
</html>