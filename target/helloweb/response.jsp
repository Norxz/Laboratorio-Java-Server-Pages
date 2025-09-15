<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Respuesta</title>
</head>
<body>
  <!-- Bean de sesión con los datos del estudiante -->
  <jsp:useBean id="student" scope="session" class="com.laboratoriojavaserverpages.beans.StudentBean" />
  <jsp:setProperty name="student" property="*" />

  <!-- "Reloj" sin JavaScript:
       Usamos Calendar para obtener la hora actual (HOUR_OF_DAY = 11). -->
  <jsp:useBean id="clock" class="java.util.GregorianCalendar" scope="request" />
  <c:set var="hour" value="${clock.get(11)}" />

  <c:choose>
    <c:when test="${hour lt 12}"><h2>Buenos días</h2></c:when>
    <c:when test="${hour lt 18}"><h2>Buenas tardes</h2></c:when>
    <c:otherwise><h2>Buenas noches</h2></c:otherwise>
  </c:choose>

  <h1>Hola, <c:out value="${student.name}" />!</h1>

  <c:choose>
    <c:when test="${student.age ge 0}">
      <p>Fecha de nacimiento: <strong><c:out value="${param.birthDate}" /></strong></p>
      <p>Edad: <strong><c:out value="${student.age}" /></strong> años</p>
    </c:when>
    <c:otherwise>
      <p>No se pudo calcular la edad (verifica la fecha).</p>
    </c:otherwise>
  </c:choose>

  <p><a href="index.jsp">Volver</a></p>
</body>
</html>
