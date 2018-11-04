<!doctype html>
<html>
<head>
    <meta name="layout" content="mainClient"/>
    <title>Login</title>
</head>
<body>
<<<<<<< HEAD
=======
<<<<<<< HEAD
    <div class="container">
      <g:if test="${message}">
      <div class="message" role="status">${message}</div>
      </g:if>
      <h2>Login</h2>
      <g:form controller="login" action="login" method="post">

          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <label for='usuario'>Ingrese su Usuario: </label>
=======
>>>>>>> 4434afbfd13320d4f298a3c5e19a16ac0727cbd1
  <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            L O G I N
                        </div>
                        <div class="login-form">
                            <g:form controller="login" action="login" method="post" class="form-group row">
                                <div class="form-group">
                                    <label for='usuario'>Usuario:</label>
                                    <input type="text" id="usuario" name="usuario" class="au-input au-input--full" placeholder="Usuario...">
                                </div>
                                <div class="form-group">
                                    <label>Contraseña:</label>
                                    <input type="password" id="password" name="password" class="au-input au-input--full" type="password" placeholder="Contraseña...">
                                </div>
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="remember">Remember Me
                                    </label>
                                    <label>
                                        <a href="#">Forgotten Password?</a>
                                    </label>
                                </div><br>
                                <input type="submit" value="I n g r e s a r" class="au-btn au-btn--block au-btn--green m-b-20"/>
                            </g:form>
                            <div class="register-link">
                                <p>
                                    No tienes una cuenta?
                                    <g:link controller="registroCliente" action="registro" class="btn btn-info">Registrarse
                                </g:link>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
<<<<<<< HEAD
            </div>
        </div>

=======
>>>>>>> 2cb236f453e88e6f93bf2d9e982a6a5af59fdca0
            </div>
        </div>

<<<<<<< HEAD
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
=======
>>>>>>> 2cb236f453e88e6f93bf2d9e982a6a5af59fdca0
>>>>>>> 4434afbfd13320d4f298a3c5e19a16ac0727cbd1
    </div>
</body>
</html>
