<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="model.Impiegato" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RICERCA PER COGNOME</title>
<style>
  .light-grey-row {
    background-color: #f2f2f2;
  }
  .light-blue-row {
    background-color: #b3e5fc;
  }
</style> 
<body>  
        
          <table class="light-grey-row">
       <tr>
          <th>NOME</th>
          <th>COGNOME</th>
          <th>CODICE FISCALE</th>
          <th>MATRICOLA</th>
         
      </tr>
    
            <% 
           List<Impiegato> impiegato = (List<Impiegato>) request.getAttribute("impiegato");
           for(int i=0; i < impiegato.size(); i++) {
           Impiegato imp = impiegato.get(i);
           %>

           <tr class="<c:if test="${status.count % 2 == 0}">light-grey-row</c:if><c:if test="${status.count % 2 != 0}">light-blue-row</c:if>">
           
       <tr>
            <td><%= imp.getNome() %></td>
           <td><%= imp.getCognome() %></td>
           <td><%= imp.getCodicefiscale() %></td>
           <td><%= imp.getMatricola() %></td>
       
            
             <td> 
                 <form action="ImpiegatoSrv" method="post"> 
                   <input type="hidden" name="nome" value="<%= imp.getNome() %>"/>
                   <input type="hidden" name="cognome" value="<%= imp.getCognome() %>"/>
                   <input type="hidden" name="codicefiscale" value="<%= imp.getCodicefiscale() %>"/>
                  <input type="hidden" name="matricola" value="<%= imp.getMatricola() %>" />
                  <input type="hidden" name="tipoOperazione" value="elimina"/>
                  <button onclick="location.href=/risultatiRicercaPerCognome.jsp">ELIMINA</button>
                  </form>
             </td>
              <td>
               <form action="ImpiegatoSrv" method="post">
                   <input type="hidden" name="nome" value="<%= imp.getNome() %>"/>
                   <input type="hidden" name="cognome" value="<%= imp.getCognome() %>"/>
                   <input type="hidden" name="codicefiscale" value="<%= imp.getCodicefiscale() %>"/>
                   <input type="hidden" name="matricola" value="<%= imp.getMatricola() %>"/>
                   <input type="hidden" name="tipoOperazione" value="ricercaPerCodicefiscale"/>
                   
                   <button onclick="location.href=AggiornaImpiegato.jsp">AGGIORNA</button>
                 </form>
              </td>
            </tr>
   <% } %>
      
</table>
<a href="Home.jsp"class="a">torna alla home</a>
</body>
</html>