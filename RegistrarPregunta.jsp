<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <%@ page import="mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject"%>
 <%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>


<html>
<head>
  <meta charset="utf-8">
  <title>Registro de banco de preguntas</title>
</head>
<body>
  <form  action="security" method="GET">
      <input type="hidden" name="action" value="registrarPregunta">
      <input type="hidden" name="id" value="<%=((UserValueObject) session.getAttribute(Attribute.Session.CURRENT_USER)).getId()%>">
  Banco de preguntas a utilizar <input type="text" name="banco" ><br>
  <!--Cargado de email-->
  <div id="preguntas">
    <div>
      <p>
        Ingrese su pregunta  <input type="text" name="pregunta0"><br>
        <input type="text" name="categoria0" placeholder="categoria"><br>
        Tipo de pregunta
    <input type="radio" name="tipo0" value="VerFal" onchange="cambioRadio()">Verdadero o Falso
    <input type="radio" name="tipo0" value="OpcionesPer" onchange="cambioRadio()">Opci&oacute;n m&uacute;ltiple
    <input type="checkbox" name="obligatoria0" > Obligatoria
    </p>
    <div id="correcto0">
      <!-- Aqui pondré las opciones para seleccionar Correcta y llenar campo opciones y sel correcta-->
    </div>
  </div>
  <input type="submit" id="addPregunta0" name="addPregunta" value="Agregar">
  </form>
</div>

  <script src="js/RegistrarPreguntas.js"></script>
</body>
</html>
