<%-- 
    Document   : processInsuranceQuo
    Created on : 21 Apr 2023, 3:30:07 pm
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
            String ic = request.getParameter("ic");
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            int coverage = Integer.parseInt(request.getParameter("coverage"));
            int ncd = Integer.parseInt(request.getParameter("ncd"));
            
            String coverageName = "null";
            double insurance = price;
            if(coverage == 1)
            {
                coverageName = "Third Party";
                switch(ncd)
                {
                case 10 : insurance *= 0.033; break;
                case 25 : insurance *= 0.025; break;
                case 35 : insurance *= 0.018; break;
                case 55 : insurance *= 0.012; break;
                }
            }
            else if(coverage == 2)
            {
                coverageName = "Comprehensive";
                switch(ncd)
                {
                case 10 : insurance *= 0.038; break;
                case 25 : insurance *= 0.030; break;
                case 35 : insurance *= 0.024; break;
                case 55 : insurance *= 0.018; break;
                }
            }
            
            double gst = insurance * 0.06;
        %>
        <fieldset>
            <legend><b> Details of Insurance Quotation </b></legend>
            <h4> IC No: <%=ic%> </h4>
            <h4> Customer Name : <%=name%> </h4>
            <h4> Market Price : <%=price%> </h4>
            <h4> Coverage Type : <%=coverageName%> </h4>
            <h4> No claim discount(NCD) : <%=ncd%>% </h4>
            <h4> Insurance amount : <%=insurance%> </h4>
            <h4> 6% GST : <%=insurance*0.06%> </h4>
            <h4> Final amount(with 6% GST) : <%=gst+insurance%> </h4>
        </fieldset>
    </body>
</html>
