<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Formulario del Estudiante</title>
</head>
<body>
  <h1>Formulario del Estudiante</h1>
  <form action="response.jsp" method="get">
    <label>Nombre:
      <input type="text" name="name" required>
    </label>
    <br><br>
    <label>Fecha de nacimiento:
      <input type="date" name="birthDate" required>
    </label>
    <br><br>
    <input type="submit" value="Enviar">
  </form>
</body>
</html>
