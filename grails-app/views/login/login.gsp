<!doctype html>
<html>
<head>
    <meta name="layout" content="maindos"/>
    <title>Login</title>
</head>
<body>
    <div class="container">
      <g:if test="${message}">
      <div class="message" role="status">${message}</div>
      </g:if>
      <h2>Login</h2>
      <g:form controller="login" action="login" method="post">
          

          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <label for='usuario'>Ingrese su Usuario: </label>
            </div>
            <input type="text" id="usuario" name="usuario" class="form-control" aria-label="Ingrese su usuario" aria-describedby="inputGroup-sizing-default" required >
          </div>

          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <label for='password'>Ingrese su Contraseña:</label>
            </div>
            <input type="password" id="password" name="password" class="form-control" aria-label="Ingrese su contraseña" aria-describedby="inputGroup-sizing-default" required >
          </div><br>          
          <input type="submit" value="Login" class="btn btn-default"/> 
      </g:form><br>
      <g:link controller="registroCliente" action="registro" class="btn btn-default">Registro
      </g:link>
    </div>
</body>
</html>
