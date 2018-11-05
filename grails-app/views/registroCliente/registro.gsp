<!Doctype html>
<html>
<head>
    <meta name="layout" content="mainClient"/>
    <title>Registro</title>
</head>
<body id="body">
    <h2>Registro</h2>
    <p>Complete los datos solicitados</p>
      <g:hasErrors bean="${cliente}">
        <div class="errors">
      <g:renderErrors bean="${cliente}"></g:renderErrors>
        </div>
      </g:hasErrors>
      <g:form action="registro" name="registro">
        <div class="formField">
          <label for="Nombre">Nombre:</label>
      <g:textField name="nombre" value="${cliente?.nombre}" />
      <br><br>
        </div>
        <div class="formField">
          <label for="Apellido">Apellido:</label>
      <g:textField name="apellido" value="${cliente?.apellido}" />
      <br><br>
        </div>
        <div class="formField">
          <label for="usuario">Usuario:</label>
      <g:textField name="usuario" value="${cliente?.usuario}" />
      <br><br>
        </div>
        <div class="formField">
          <label for="password">Contraseña:</label>
      <g:passwordField name="password"
        value="${cliente?.password}"/>
        <br><br>
        </div>
        <div class="formField">
          <label for="password">Confirmacion Contraseña:</label>
      <g:passwordField name="confirmacion"
        value="${cliente?.password}"/>
        <br><br>
        </div>
        <div class="formField">
          <label for="telefono">Telefono:</label>
      <g:textField name="telefono" value="${cliente?.telefono}" />
      <br><br>
        </div>
        <div class="formField">
          <label for="direccion">Direcci&oacute;n:</label>
      <g:textField name="direccion" value="${cliente?.direccion}" />
      <br><br>
        </div>
      <g:submitButton class="formButton" name="register" value="Registrarse" />
  </g:form>
</body>
</html>