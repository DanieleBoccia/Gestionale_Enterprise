<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="model.Impiegato" %>
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
		Impiegato impiegato = (Impiegato) session.getAttribute("impiegato");
		%>
		
<div class="rectangle">
      <h1>AGGIORNA IMPIEGATO</h1>
      
      <form action="ImpiegatoSrv" method = "post"> 
      
      NOME <input type="text" name="nome" value="<%=impiegato.getNome()%>"/> 
      COGNOME <input type="text" name="cognome" value="<%=impiegato.getCognome()%>"/> 
      CODICE FISCALE <input type="text" name="codicefiscale" value="<%=impiegato.getCodicefiscale()%>"/>
      MATRICOLA <input type="text" name="matricola" value="<%=impiegato.getMatricola()%>"/>  <br>
      
      <input type="hidden" name="tipoOperazione" value="aggiorna"/>
      <br>
      
      <input type="submit" value="INVIA" />
      
      </form>
      <a href="Home.jsp"class="a">torna alla home</a>
      </div>
      </body>
      
</html>