<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href="css/trangDoc.css">
</head>
<body>
    <div id="anh-bia">
        <img  src="img/Thumbnails/${truyen.id}.jpg" alt="Anh bia"/>
    </div>
    <div id="thong-tin">
        <div>Ten truyen: ${truyen.ten}</div>
        <div>Nha xuat ban: ${truyen.nxb}</div>
        <div>Danh gia: ${truyen.rating}</div>
    </div>
    <button type="submit">
        <a href="reader.jsp">Doc Truyen</a>
    </button>
    <script src='main.js'></script>
</body>
</html>