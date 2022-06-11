<%-- 
    Document   : uploadTruyen
    Created on : Jun 11, 2022, 5:51:24 PM
    Author     : suckm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div id='tai-truyen'>
            <h1>Upload File Truyen</h1>
            <input id='file' type='file' name='truyen'/>
            <button id="upload">upload</button>

            <p id = 'mess'></p>
            <p id = 'mess2'></p>
        </div>
        
    </body>
    
    <script src="${pageContext.request.contextPath}/js/truyenUpload.js"></script>
    
    <style>
        #tai-truyen{
            display: flex;
            flex-direction: column;
            align-items: center;
            border: 1px solid black;
            width: fit-content;
        }
        
        #tai-truyen h1{
            margin: 0 10px 0 10px ;
            
        }
        
        #upload{
            width: fit-content;
            
        }
        
        #file{
            border: 1px solid black;
            margin: 10px 0 10px 0;
        }
    </style>
</html>

