
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
        <link rel='stylesheet' type='text/css' media='screen' href='${pageContext.request.contextPath}/css/admin.css'>
        <title>Hentai Heaven</title>
    </head>
    <body>
        <div id = 'container'>
            
            <div id="them-truyen">
                <p>Them Truyen</p>
                <input id ="id" placeholder="ID" value="DRM1">
                <input id ="ten" placeholder="Ten Truyen" value="Doremon tap 1">
                <input id ="nxb" placeholder="Ten Nha Xuat Ban" value="Kim Dong">
                <select id="them-the-loai">
                    <option value="tt">Truyen Tranh</option>
                    <option value="tnl">Truyen Nguoi Lon</option>
                </select>
                <button id = 'them'>Them</button>
                <p class ='thong-bao' id = "thong-bao"></p>
            </div>
        
            <div id="sua-truyen">
                <p>Sua Truyen</p>
                <input id ="id-sua" placeholder="ID" value="DRM1">
                <input id ="ten-sua" placeholder="Ten Truyen" value="Doremon tap 1">
                <input id ="nxb-sua" placeholder="Ten Nha Xuat Ban" value="Kim Dong">
                <select id="sua-the-loai">
                    <option value="tt">Truyen Tranh</option>
                    <option value="tnl">Truyen Nguoi Lon</option>
                </select>
                <button id = 'sua'>Xac Nhan</button>
                <p class ='thong-bao' id = "thong-bao2"></p>
            </div>
            
            <div id="xoa-truyen">
                <p>Xoa Truyen</p>
                <input id ="id-xoa" placeholder="ID" value="DRM1">
                <button id = 'xoa'>Xac Nhan</button>
                <p class ='thong-bao' id = "thong-bao3"></p>
            </div>
        </div>
        
        
    </body>
    <script src="${pageContext.request.contextPath}/js/apiTruyen.js"></script>
    

</html>
