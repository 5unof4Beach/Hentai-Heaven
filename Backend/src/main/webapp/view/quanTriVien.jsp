
<%@page import="model.User"%>
<%@page import="javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='toInclude/const.jsp' %>
<%@include file="toInclude/header.jsp" %>
<%@include file="toInclude/adminCheck.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' type='text/css' media='screen' href='${pageContext.request.contextPath}/css/homepage.css'>
        <title>JSP Page</title>
    </head>
        <style>
            p{
                color: white;
            }
        </style>
    <body>
        <p>Them Truyen</p>
        <input id ="id" placeholder="ID">
        <input id ="ten" placeholder="Ten Truyen">
        <input id ="nxb" placeholder="Ten Nha Xuat Ban">
        <button id = 'them'>them</button>
        <p></p>
    </body>
    <script src='${pageContext.request.contextPath}/js/themTruyen.js'></script>

</html>
