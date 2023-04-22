<%-- 
    Document   : processCustomer
    Created on : 17 Apr 2023, 2:38:42 pm
    Author     : Hazmi33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <h1> Use JSP Scriplet and JSP Expression in application </h1>
    </head>
    <body>
        <%
            final int price = 10;
            
            String cust_no1 = request.getParameter("cust_no");
            int quantity1 = Integer.parseInt(request.getParameter("quantity"));
            String cust_type1 = request.getParameter("cust_type");
            
            if(quantity1>100)
            {
                if(cust_type1.equals("1"))
                {
                    out.print("You're entitle 10%");%> <br> <%
                    out.print("Total amount is RM"+quantity1 * price * 0.9);    
                }
                else if(cust_type1.equals("2"))
                {
                    out.print("You're entitle 25%");%> <br> <%
                    out.print("Total amount is RM"+quantity1 * price * 0.75);
                }
            }
            else
            {
                out.print("You're not entitle discount..!");%> <br> <%
                out.print("Total amount is RM"+quantity1 * price);
            
        %>
    </body>
</html>