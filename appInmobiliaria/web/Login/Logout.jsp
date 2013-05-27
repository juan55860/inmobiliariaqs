<%-- 
    Document   : logout
    Created on : 21/11/2012, 01:08:01 AM
    Author     : Diego Fernando
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
                    session.setAttribute("theName", null);
                    response.sendRedirect("../home.jsp");
            %>
    </body>
</html>
