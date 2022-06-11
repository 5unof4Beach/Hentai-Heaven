/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.JsonObject;
import dao.TruyenDao;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;
import util.JsonConverter;

/**
 *
 * @author suckm
 */
@WebServlet(name = "TruyenUpload", urlPatterns = {"/upload"})
public class TruyenUpload extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        InputStream truyen = request.getInputStream();
        
        String idTruyen = "Truyen Moi Them";
        idTruyen = (String) request.getSession().getAttribute("idThemTruyen");
        File f = new File("C:\\Users\\suckm\\OneDrive\\Desktop\\TestDataBTLWeb\\" + idTruyen + ".pdf");
        
        FileOutputStream out = new FileOutputStream(f);
        
        truyen.transferTo(out);

        PrintWriter printOut = response.getWriter();
        response.setContentType("application/json");
        printOut.print("{\"mess\": \"Upload File Truyen Thanh Cong\"}");
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
