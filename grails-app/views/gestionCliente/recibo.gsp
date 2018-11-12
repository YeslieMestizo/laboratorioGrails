<!doctype html>
<html>
    <head>
        <meta name="layout" content="mainClient"/>
        <title>Recibo</title>
    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />

</head>
<body>
    <div class="page-wrapper">
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="images/icon/logo.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>

        </header>


        <div class="page-container">
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-7">
                                <!-- TOP CAMPAIGN-->
                                <div class="top-campaign">
                                    <h3 class="title-3 m-b-10">R E C I B O</h3>
                                    <div class="table-responsive">
                                        <table class="table table-top-campaign">
                                            <tbody>
                                                <tr>
                                                    <td><asset:image src="logo.png" width="100px"/></td>
                                            <td style="font-size: 24px;">R A Y . c o m</td>
                                            <td></td>
                                            </tr>
                                            <tr>
                                                <td>Fecha:</td>
                                                <td>
                                                    <%hoy = new Date()%>
                                                    <%=hoy%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Direcci&oacute;n:</td>
                                                <td>Catamarca-Argentina</td>
                                            </tr>
                                            <tr>
                                                <td>Tel&eacute;fono: </td>
                                                <td>383-451263</td>
                                            </tr>
                                            <br>
                                            <!---->
                                            <div class="container">
                                                <tr>
                                                    <td></td>
                                                    <td><strong>R E C I B O - P A R A :</strong></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Cliente: </strong></td>
                                                    <td>${alquiler.cliente.nombreUsuario}</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td><strong>D E T A L L E :</strong></td>
                                                    <td></td>
                                                </tr>
                                                <tr>
                                                    <td><strong>Producto</strong></td>
                                                </tr>
                                                <g:each in="${alquiler.items}">
                                                    <tr >
                                                        <td>${it.descripcion}</td>
                                                    </tr>
                                                </g:each>

                                                <tr>
                                                    <td></td>
                                                    <td><strong>TOTAL A PAGAR:</strong></td>
                                                    <td>${alquiler.precio}</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="http://localhost:8080/gestionCliente/index" class="au-btn au-btn--block au-btn--green m-b-20">Terminar</a>
                                                    </td>
                                                </tr>
                                            </div>
                                            </tr>
                                    </div>

                                    </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--  END TOP CAMPAIGN-->
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-7">
                            <div class="copyright">
                                <p>Copyright © 2018 RAY.com. All rights reserved.</p>
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
