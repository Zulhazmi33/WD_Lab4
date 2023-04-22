<%-- 
    Document   : insuranceQuotation
    Created on : 21 Apr 2023, 3:16:14 pm
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
        <h1> Insurance Quotation </h1>
        
        <form action="processInsuranceQuo.jsp">
            <fieldset>
                <legend> Insurance Calculation </legend>
                
                <label for="ic"> ICNo* </label>
                <input name="ic" type="text" placeholder="E.g. 821210-05-3478"> <br>
                
                <label for="name"> Name* </label>
                <input name="name" type="text" placeholder="Enter name"> <br>
                
                <label for="price"> Market Price* </label>
                <input name="price" type="number" placeholder="Price"> <br>
                
                <label for="coverage"> Coverage Type </label>
                <select name="coverage">
                    <option value="1"> Third Party </option>
                    <option value="2"> Comprehensive </option>
                </select> <br> 
                
                <label for="ncd"> No claims discount<br>(NCD) </label>
                <select name="ncd">
                    <option value="10"> 10% </option>
                    <option value="25"> 25% </option>
                    <option value="35"> 35% </option>
                    <option value="55"> 55% </option>
                </select> <br>
                
                <input type="submit" value="Submit">
                <input type="reset" value="Cancel">
            </fieldset>
        </form>
    </body>
    <footer>
        <p> 2016-Mohamad Nor </p>
    </footer>
</html>
