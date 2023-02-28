<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserimento Impiegato</title>
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
      <h1>INSERISCI STORICO</h1>
      
      <form action="StoricoSrv" method = "post"> 
      
      ID STORICO <input type="text" name="idStorico"/> 
      ID RUOLO <input type="text" name="idRuolo"/>
      MATRICOLA <input type="text" name="matricola"/> 
      DATA INIZIO <input type="text" name="dataInizio"/> 
      DATA FINE <input type="text" name="dataFine"/> 
      
      <input type="hidden" name="tipoOperazione" value="inserisci"/>
      <br>
      
      <input type="submit" value="INVIA" />
      
      </form>
      <a href="Home.jsp"class="a">torna alla home</a>
      </div>
      </body>
      
</html>