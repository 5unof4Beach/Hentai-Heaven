/*;
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import model.Truyen;
import com.google.gson.Gson;
import controller.dao.ReadDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Readingpage", urlPatterns = {"/read"})
public class ReadController extends HttpServlet {
    private Gson gson = new Gson();
    
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String truyenID = req.getParameter("truyenID");
        String url = "/jsp/read.jsp";
//        String url = "/login";
        String jsonString = " ";
        ReadDao rd = new ReadDao();
        Truyen t = rd.getTruyenInfoByID(truyenID);
        req.getSession().setAttribute("truyen", t);
        getServletContext().getRequestDispatcher(url).forward(req, resp);
        
        
//        PrintWriter out = resp.getWriter();
//        resp.setContentType("application/json");
//        resp.setCharacterEncoding("UTF-8");
//        out.print(jsonString);
//        out.flush();   
        
    }
    
} 
