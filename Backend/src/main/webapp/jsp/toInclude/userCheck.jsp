<%@page import="model.User"%>
<%@include file="const.jsp" %>
<%
    User u = (User)session.getAttribute("user");
    if(u == null){
        out.print("<a class = 'link' href='jsp/dangNhap.jsp' >Login</a>");
        out.print("<a class = 'link' href='jsp/dangKy.jsp' >Signup</a>");
    }
    else{
        out.print("<a class = 'link' href='#'>" + u.getUserName()+ "</a>");
        if(u.getType() == ADMIN){
            out.print("<a class = 'link' href='jsp/thongTinNguoiDung.jsp'>Admin</a>");
        }
    }
    
%>