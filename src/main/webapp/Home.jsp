<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
 <style>
  .rectangle {
    border-left: 7px outset #0066A2;
    padding: 10px;
  }
  .a {
  color: blue; 
  text-decoration: none; 

}
  </style>
</head>
<body>
<div class="rectangle">
  <h1>Benvenuti alla Home Page</h1>
  <h2>Scegli una delle seguenti opzioni:</h2>
  <ul>
    <h3>IMPIEGATO</h3>
    
    <li><a href="InserimentoImpiegato.jsp" class="a">INSERISCI IMPIEGATO</a></li>
    
    <h4>Ricerca</h4>
    
    <li><a href="ricercaImpiegatoPerCognome.jsp"class="a">CERCA IMPIEGATO PER COGNOME</a></li>
    <li><a href="ricercaImpiegatoPerCodiceFiscale.jsp"class="a">CERCA IMPIEGATO PER CODICE FISCALE</a></li>
    
     <h3>RUOLO</h3>
    
    <li><a href="InserimentoRuolo.jsp"class="a">INSERISCI RUOLO</a></li>
    
    <h4>Ricerca</h4>
    
    <li><a href="ricercaRuoloPerIdRuolo.jsp"class="a">CERCA RUOLO IMPIEGATO</a></li>
    
     <h3>STORICO</h3>
    
    <li><a href="InserimentoStorico.jsp"class="a">INSERISCI STORICO</a></li>
    
    <h4>Ricerca</h4>
    
    <li><a href="ricercaStoricoPerIdStorico.jsp"class="a">CERCA STORICO IMPIEGATO</a></li>
    
  </ul>
  </div>
</body>
</html>