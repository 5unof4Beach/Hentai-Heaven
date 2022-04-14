<%-- 
    Document   : dangNhap
    Created on : Apr 12, 2022, 11:07:18 PM
    Author     : suckm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div id="container">
        <h1>Đăng Nhập</h1>
        <div id="dangNhap">
            <form action="login" method="post">
                <p>
                    <input id="username" type="text" placeholder="Tên đăng nhập" name = "user">
                </p>
                <p>
                    <input id="password" type="Password" placeholder="Mật khẩu" name = "password">
                </p>
                <button type="submit">Đăng nhập</button>
            </form>
            <small>
                Bạn chưa có tài khoản? Đăng ký <a href="dangKy.jsp">Tại đây</a></p>
            </small>
            <p>${mess}</p>
        </div>
    </div>
</body>
<script>

</script>
</html>
