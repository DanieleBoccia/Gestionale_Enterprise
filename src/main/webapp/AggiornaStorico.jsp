<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="model.Storico" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aggiornamento Impiegato</title>
 <style>
  .rectangle {
    border-left: 7px outset #0066A2;
    padding: 10px;
  }
  .a {
  color: blue; 
  text-decoration: none; 

}

<h3 id="heading-1" class="ui-bar ui-bar-a ui-corner-all">Heading</h3>
<div class="ui-body ui-body-a ui-corner-all">
	<p>Content</p>
</div>
font: bold 15px arial, sans-serif;

text-shadow:none;

}
</style>
</head>
<body>
        <%
		Storico str = (Storico) session.getAttribute("str");
	    %>
		
<div class="rectangle">
      <h1>AGGIORNA STORICO</h1>
      
      <form action="StoricoSrv" method = "post"> 
      
      ID STORICO <input type="text" name="idStorico" value = <%= str.getIdStorico() %>/> 
      ID RUOLO <input type="text" name="idRuolo" value = <%= str.getIdRuolo() %>/>
      MATRICOLA <input type="text" name="matricola" value = <%= str.getMatricola() %>/> 
      DATA INIZIO <input type="text" name="dataInizio" value =  <%= str.getDataInizio() %>/> 
      DATA FINE <input type="text" name="dataFine" value = <%= str.getDataFine() %>/> 
      
      <input type="hidden" name="tipoOperazione" value="aggiorna"/>
      <br>
      
      <input type="submit" value="INVIA" />
      
      </form>
      <p><a href="Home.jsp"class="a">torna alla home</a></p>
      </div>
      </body>
      
</html>