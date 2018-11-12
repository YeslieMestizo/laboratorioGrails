<html>
    <head>
        <meta name="layout" content="mainAdministrador"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Alquiler</title>

    <asset:stylesheet src="bootstrap.min.css" />
    <asset:stylesheet src="custom.css" />
</head>
<body>
    <div class="container">
        <h1>Detalle Alquiler</h1>
    </div>

    <div class="table-responsive m-b-40">
        <div class="container">
            <table class="table table-hover">
                <tr class="info">
                    <th>Codigo</th>
                    <th>Cliente</th>
                    <th>Fecha Entrega</th>
                    <th>Fecha Devolucion</th>
                    <th>Productos</th>
                    <th>Precio</th>
                    <th>estado</th>
                </tr>
                <tr class="success">
                    <td>${alquiler.id}</td>
                    <td>${alquiler.cliente.id}</td>
                    <td>${alquiler.fechaEntrega}</td>
                    <td>${alquiler.fechaDevolucion}</td>
                    <td>${alquiler.items.id}</td>
                    <td>${alquiler.precio}</td>
                    <td>${alquiler.estado}</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="container">
        <h1>Datos Cliente</h1><br>
    </div>

    <div class="table-responsive m-b-40">
        <div class="container">
            <table class="table table-hover">
                <tr class="info">
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Usuario</th>
                </tr>
                <tr class="success">
                    <td>${alquiler.cliente.id}</td>
                    <td>${alquiler.cliente.nombreUsuario}</td>
                    <td>${alquiler.cliente.email}</td>
                </tr>
            </table>
        </div>
    </div>
    <div class="container">
        <h1>Items Alquilados</h1><br>
    </div>

    <div class="table-responsive m-b-40">
        <div class="container">
            <table class="table table-hover">
                <tr class="info">
                    <th>Codigo</th>
                    <th>Descripcion</th>
                    <th>Talle</th>
                    <th>Genero</th>
                    <th>Tipo</th>
                </tr>
                <g:each in="${alquiler.items}">
                    <tr class="success">
                        <td>${it.id}</td>
                        <td>${it.descripcion}</td>
                        <td>${it.talle}</td>
                        <td>${it.genero}</td>
                        <td>${it.tipo.descripcion}</td>
                    </tr>
                </g:each>
            </table>
        </div>
    </div>
<asset:javascript src="bootstrap.min.js" />
<asset:javascript src="jquery-1.11.3.min.js" />
<asset:javascript src="holder.min.js" />
<asset:javascript src="ie10-viewport-bug-workaround.js" />
</body>
</html>
