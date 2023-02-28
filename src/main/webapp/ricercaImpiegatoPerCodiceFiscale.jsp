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
      <h1>RICERCA IMPIEGATO</h1>
      <h2>Immettere codice fiscale</h2>
      <form action="ImpiegatoSrv" method = "post"> 
      
      <input type="text" name="codicefiscale"/> 
      
      <input type="hidden" name="tipoOperazione" value="ricercaPerCodicefiscale"/>
    
      <input type="submit" value="CERCA" />
      
      </form>
      <a href="Home.jsp"class="a">torna alla home</a>
      </div>
</body>
</html>