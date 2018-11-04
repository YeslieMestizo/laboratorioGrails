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
        <div class="page-container">
            <div class="col-sm-4">
                <div">
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

    <div class="container">    
        <div class="col-md-4">
            <div class="card">
                <div class="card-header bg-info">
                    <strong class="card-title text-light">CANTIDAD DE USUARIO</strong>
                </div>
                <div class="card-body text-white bg-success">
                    <p class="card-text text-light">Some quick example text to build on the card title and make up the bulk of the card's content.
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
                    <p class="card-text text-light">Some quick example text to build on the card title and make up the bulk of the card's content.
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
                <p class="card-text text-light">Some quick example text to build on the card title and make up the bulk of the card's content.
                </p>
            </div>
        </div>
    </div>



        <div class="page-container">
            <!-- HEADER DESKTOP-->
            
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="card border border-primary">
                                    <div class="card-header">
                                        <strong class="card-title">Cantidad de usuario</strong>
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                                            content.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card border border-secondary">
                                    <div class="card-header">
                                        <strong class="card-title">Card Outline</strong>
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                                            content.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card border border-success">
                                    <div class="card-header">
                                        <strong class="card-title">Card Outline</strong>
                                    </div>
                                    <div class="card-body">
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                                            content.
                                        </p>
                                    </div>
                                </div>
                            </div>


                            

                            <div class="col-md-4">
                                <div class="card bg-primary">
                                    <div class="card-body">
                                        <blockquote class="blockquote mb-0 text-light">
                                            <p class="text-light">Cantidad de usuario.</p>
                                            <footer class="blockquote-footer text-light">Someone famous in
                                                dfkldfkjlfkjsldkfj
                                            </footer>
                                        </blockquote>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-header bg-info">
                                        <strong class="card-title text-light">Cantidad de usuario</strong>
                                    </div>
                                    <div class="card-body text-white bg-primary">
                                        <p class="card-text text-light">Some quick example text to build on the card title and make up the bulk of the card's
                                            content.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-header bg-primary">
                                        <strong class="card-title text-light">I T E M S</strong>
                                    </div>
                                    <div class="card-body text-white bg-info">
                                        <p class="card-text text-light">Some quick example text to build on the card title and make up the bulk of the card's
                                            content.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            


                            
                        </div>
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