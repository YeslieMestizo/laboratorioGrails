<!doctype html>
<html>
<head>
    <meta name="layout" content="mainClient"/>
    <title>Login</title>
</head>
<body>
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
            </div>
        </div>

    </div>
</body>
</html>
