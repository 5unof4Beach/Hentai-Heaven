
<%@page import="model.User"%>
<%@page import="javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='toInclude/const.jsp' %>
<%
    User u = (User)session.getAttribute("user");
    if(u == null || u.getType()!= ADMIN){
//        request.getRequestDispatcher("dangNhap.jsp").forward(request, response);
//        request.getRequestDispatcher("/index.jsp").forward(request, response);
        request.getRequestDispatcher("dangNhap.jsp").forward(request, response);
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