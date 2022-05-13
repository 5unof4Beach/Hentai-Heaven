
<%@page import="model.User"%>
<%@page import="javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='toInclude/const.jsp' %>
<%
    User u = (User)session.getAttribute("user");
    if(u == null || u.getType()!= ADMIN){
        response.sendRedirect(request.getContextPath() + "/home");
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type='text/css' media='screen' href='${pageContext.request.contextPath}/css/homepage.css'>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Them Truyen</h1>
    </body>
</html>
