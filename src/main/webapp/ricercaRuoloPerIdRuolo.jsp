<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <style>
  .rectangle {
    border-left: 7px outset #0066A2;
    padding: 10px;
  }
 .a {
  color: blue; 
  text-decoration: none; 

</style>
</head>
<body>
      <div class="rectangle">
      <h1>RICERCA RUOLO</h1>
      <h2>Immettere Id Ruolo</h2>
      <form action="RuoloSrv" method = "post"> 
      
      <input type="text" name="idRuolo"/> 
      
      <input type="hidden" name="tipoOperazione" value="ricercaPerIdRuolo"/>
    
      <input type="submit" value="CERCA" />
      
      </form>
      <a href="Home.jsp"class="a">torna alla home</a>
      </div>
</body>
</html>