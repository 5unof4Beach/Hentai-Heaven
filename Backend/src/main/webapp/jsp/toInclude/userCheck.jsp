<%@page import="model.User"%>
<%@include file="const.jsp" %>
<%
    User u = (User)session.getAttribute("user");
    if(u == null){
        out.print("<a class = 'link' href='dangnhap' >Login</a>");
        out.print("<a class = 'link' href='dangky' >Signup</a>");
    }
    else{
        out.print("<a class = 'link' href='thongtin'>" + u.getUserName()+ "</a>");
        if(u.getType() == ADMIN){
            out.print("<a class = 'link' href='jsp/thongTinNguoiDung.jsp'>Admin</a>");
        }
    }
    
%>