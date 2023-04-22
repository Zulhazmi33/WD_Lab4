<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

<%@page import="java.lang.Math"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1> BMI converter </h1>
        
        <%
            double height, weight;
            double bmi = 0;
            String statement = "";
            
            if(request.getParameter("height")!=null && request.getParameter("weight")!=null)
            {
                height = Double.parseDouble(request.getParameter("height"));
                weight = Double.parseDouble(request.getParameter("weight"));
                
                bmi = weight/Math.pow(height,2);
                
                if(bmi>=18.5 && bmi<=25)
                    statement = "Your weigth is considered OPTIMAL";
                else if(bmi<18)
                    statement = "Your weight is considered UNDERWEIGHT";
                else if(bmi>25)
                    statement = "Your weight is considered OVERWEIGHT";
            }
        %>
        
        <form>
            <label for="weight"> Enter weight : </label>
            <input type="text" name="weight" placeholder="in kilogram(kg)"> <br>
            <label for="height"> Enter Height : </label>
            <input type="text" name="height" placeholder="in meter(m)"> <br><br>
            
            <input type="submit" value="Calculate">
            <input type="reset" value="Cancel">
        </form>
        
        <p> BMI = <%=bmi%></p>
        <textarea cols="30" rows="3"> <%=statement%> </textarea>
    </body>
</html>
