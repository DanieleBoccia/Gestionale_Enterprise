<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <style>
  .rectangle {
    border-left: 7px outset #0066A2;
    padding: 10px;
  }


</style>
</head>
<body>
      <div class="rectangle">
      <h1>RICERCA IMPIEGATO</h1>
      <h2>Immettere cognome</h2>
      <form action="ImpiegatoSrv" method = "post"> 
      
      <input type="text" name="cognome"/> 
      
      <input type="hidden" name="tipoOperazione" value="ricercaPerCognome"/>
    
      <input type="submit" value="CERCA" />
      
      </form>
      <a href="Home.jsp"class="a">torna alla home</a>
      </div>
</body>
</html>