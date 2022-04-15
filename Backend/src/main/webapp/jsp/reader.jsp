<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileInputStream"%>
<% 
        response.setContentType("application/pdf");
        ServletOutputStream oute = response.getOutputStream();
//        FileInputStream fin = new FileInputStream("D:\\NakedGun1\\test.mp4");
        FileInputStream fin = new FileInputStream("D:\\Hentai Heaven Data\\Comic\\DRM1.pdf");

        byte [] buf = new byte[4096];
        int read;
        while((read = fin.read(buf)) != -1)
        {
            oute.write(buf, 0, read);
        }

        fin.close();
        oute.flush();
        oute.close();
%>