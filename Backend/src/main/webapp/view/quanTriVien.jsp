
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
                <h1>Them Truyen</h1>
                <input id ="id" placeholder="ID" value="DRM1">
                <input id ="ten" placeholder="Ten Truyen" value="Doremon tap 1">
                <input id ="nxb" placeholder="Ten Nha Xuat Ban" value="Kim Dong">
                <select id="them-the-loai">
                    <option value="tt">Truyen Tranh</option>
                    <option value="tnl">Truyen Nguoi Lon</option>
                </select>

                <div id='tai-truyen' class='tai-file'>
                    <h1>Upload File Truyen</h1>
                    <input id='file' type='file'/>
                    <!--<button id="upload">upload</button>-->

                    <p id = 'mess'></p>
                    <p id = 'mess2'></p>
                </div>
                
                <div id='tai-truyen' class='tai-file'>
                    <h1>Upload Anh Thumb</h1>
                    <input id='file-thumb' type='file'/>

                    <p id = 'mess3'></p>
                    <p id = 'mess4'></p>
                </div>
                
                <button id = 'them'>Them</button>
                <h1 class ='thong-bao' id = "thong-bao"></h1>
            </div>

            <div id="sua-truyen">
                <h1>Sua Truyen</h1>
                <input id ="id-sua" placeholder="ID" value="DRM1">
                <input id ="ten-sua" placeholder="Ten Truyen" value="Doremon tap 1">
                <input id ="nxb-sua" placeholder="Ten Nha Xuat Ban" value="Kim Dong">
                <select id="sua-the-loai">
                    <option value="tt">Truyen Tranh</option>
                    <option value="tnl">Truyen Nguoi Lon</option>
                </select>

                <button id = 'sua'>Xac Nhan</button>
                <h2 class ='thong-bao' id = "thong-bao2"></h2>
            </div>

            <div id="xoa-truyen">
                <h1>Xoa Truyen Trong Database</h1>
                <input id ="id-xoa" placeholder="ID" value="DRM1">
                <button id = 'xoa'>Xac Nhan</button>
                <h1 class ='thong-bao' id = "thong-bao3"></h1>
                
                <h1>Xoa File Truyen</h1>
                <input id ="id-xoa-file" placeholder="ID" value="DRM1">
                <button id = 'xoa-file'>Xac Nhan</button>
                <h1 class ='thong-bao'></h1>
                
                <h1>Xoa Anh Thumb</h1>
                <input id ="id-xoa-thumb" placeholder="ID" value="DRM1">
                <button id = 'xoa-thumb'>Xac Nhan</button>
                <h1 class ='thong-bao'></h1>
                
            </div>
        </div>


    </body>
    <script src="${pageContext.request.contextPath}/js/admin.js"></script>


</html>
