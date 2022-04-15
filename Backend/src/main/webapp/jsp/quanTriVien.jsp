<%-- 
    Document   : quanTriVien
    Created on : Apr 14, 2022, 10:36:49 PM
    Author     : suckm
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User u = (User)session.getAttribute("user");
    if(u == null || u.getIsAdmin() != 1){
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Page Quan Tri Vien</h1>
    </body>
</html>
