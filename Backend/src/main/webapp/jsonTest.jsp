<%@page import="com.google.gson.Gson"%>
<%@page import="murach.business.User"%>
<%@page import="java.io.PrintWriter"%>
<% 
    Gson gson = new Gson();
    User employee = new User("Duc","Bui", "Email");
    String employeeJsonString = gson.toJson(employee);
    PrintWriter jout = response.getWriter();
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    
    jout.print("");
    jout.flush();
%>