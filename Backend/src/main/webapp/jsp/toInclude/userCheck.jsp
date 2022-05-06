<%@page import="model.User"%>
<%@include file="const.jsp" %>
<%
    Cookie[] cookie = request.getCookies();
    
        Boolean loggedIn = false;
        for(Cookie c:cookie){
            if(c.getName().equals("user")){
                out.print("<a class = 'link' href='thongtin' >"+c.getValue()+"</a>");
                loggedIn = true;
                    
                
//                User u = (User)session.getAttribute("user");
//                if(u.getType() == ADMIN){
//                    out.print("<a class = 'link' href='admin'>admin</a>");
//                }
            }
        }
        
        if(!loggedIn){
            out.print("<a class = 'link' href='dangnhap' >Login</a>");
            out.print("<a class = 'link' href='dangky' >Signup</a>");
        }
    
    
%>