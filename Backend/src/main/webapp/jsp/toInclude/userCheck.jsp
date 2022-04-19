<%@page import="model.User"%>
<%@include file="const.jsp" %>
<%
    Cookie[] cookie = request.getCookies();
    
    if(cookie == null){
        out.print("<a class = 'link' href='dangnhap' >Login</a>");
        out.print("<a class = 'link' href='dangky' >Signup</a>");
    }
    else{
        for(Cookie c:cookie){
            if(c.getName().equals("user")){
                if(c.getValue() == null || c.getValue() == ""){
                    out.print("<a class = 'link' href='dangnhap' >Login</a>");
                    out.print("<a class = 'link' href='dangky' >Signup</a>");
                }
            else{
                out.print("<a class = 'link' href='thongtin'>" + c.getValue() + "</a>");
    //            if(u.getType() == ADMIN){
    //                out.print("<a class = 'link' href='jsp/thongTinNguoiDung.jsp'>Admin</a>");
    //            }
                }
            }
        }
    
    }
    
    
    
%>