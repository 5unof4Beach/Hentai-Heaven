<%@page import="model.Truyen"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileInputStream"%>
<% 
        response.setContentType("application/pdf");
        ServletOutputStream sos = response.getOutputStream();
        
        
        Truyen t = (Truyen)request.getSession().getAttribute("truyen");
        //FileInputStream fin = new FileInputStream("/home/duc/Desktop/Hentai Heaven Data/Comic/"+t.getId()+".pdf");
        FileInputStream fin = new FileInputStream("D:/Hentai Heaven Data/Comic/"+ t.getId() + ".pdf");
//        System.out.println("id:" + t.getId());
        

        byte [] buf = new byte[4096];
        int read;
        while((read = fin.read(buf)) != -1)
        {
            sos.write(buf, 0, read);
        }

        fin.close();
        sos.flush();
        sos.close();
        
%>
