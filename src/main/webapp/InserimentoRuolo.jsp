<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserimento Ruolo</title>
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
      <h1>INSERISCI RUOLO</h1>
      
      <form action="RuoloSrv" method = "post"> 
      
      ID RUOLO <input type="text" name="idRuolo" /> 
      DESCRIZIONE <input type="text" name="Descrizione"/> 
      
      <input type="hidden" name="tipoOperazione" value="inserisci"/>
      <br>
      
      <input type="submit" value="INVIA" />
      
      </form>
      <p><a href="Home.jsp"class="a">torna alla home</a></p>
      </div>
      </body>
      
</html>