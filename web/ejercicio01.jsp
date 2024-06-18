
<%
  //PASO 2: Capturar informacion del formulario
    String sn1 = request.getParameter("n2");
    String sn2 = request.getParameter("n2");
    String sn3 = request.getParameter("n3");
    
    //PASO3: calcular mayo
    int mayor = -1;
    int n1 = 0;
    int n2 = 0;
    int n3 = 0;
    
    //Conversion de String a Integer
    try{
    n1 = Integer.parseInt(sn1);
    n2 = Integer.parseInt(sn2);
    n3 = Integer.parseInt(sn3);
    
    if (n1 >= n2 && n1 >= n3) mayor = n1;
    if (n2 >= n1 && n2 >= n3) mayor = n2;
    if (n3 >= n1 && n3 >= n2) mayor = n3;
    
    }catch(Exception e){
    if (sn1 != null && sn2 != null && sn3 !=null){
    out.print("Debe ingresar solo numeros");
    }
    }
    
    if (sn1 == null) sn1="";
    if (sn2 == null) sn2="";
    if (sn3 == null) sn3="";
    
%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Buscar Mayor</h1>
        
        
        <!<!-- PASO 1: formulario de ingreso -->
        <form method="POST" action="">
            <p>N1<input type="text" name="n1" value="<%= sn1 %>">
                <% if (mayor == n1) out.print("<---MAYOR"); %></p>
            <p>N2<input type="text" name="n2" value="<%= sn2 %>>
                <% if (mayor == n2) out.print("<---MAYOR"); %></p>
            <p>N3<input type="text" name="n3" value="<%= sn3 %>>
                <% if (mayor == n3) out.print("<---MAYOR"); %></p>
            <p><input type="submit" name="" value="BUSCAR MAYOR"></p>
        </form>
        
        <a href="index.html">[VOLVER]</a>
    </body>
</html>
