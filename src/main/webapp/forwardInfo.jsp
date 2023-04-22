<%-- 
    Document   : forwardInfo
    Created on : 21 Apr 2023, 3:02:35 pm
    Author     : Hazmi33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("U_Name");
            String Email = request.getParameter("Email");
            String Nationality = request.getParameter("Nationality");
            String Background = request.getParameter("Background");
            
            if(name != null) 
            {%>
                <br><br><br> <h2 align="center">
                    <%=name%><br>
                    <%=Email%><br>
                    <%=Nationality%><br>
                    <%=Background%><br><br>

                    <%out.print("Today is:"+java.util.Calendar.getInstance().getTime());%>
                </h2><br><br>
            <%}%>
    </body>
</html>
