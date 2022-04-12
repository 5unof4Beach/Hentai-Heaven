/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Json;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author suckm
 */
@WebServlet(name = "JsonTest", urlPatterns = {"/json"})
public class JsonTest extends HttpServlet {
    private Gson gson = new Gson();
    private Vector<User> userList = new Vector();

    @Override
    protected void doGet(
      HttpServletRequest request, 
      HttpServletResponse response) throws IOException {
        
//        User employee = new User("Duc","Bui", "Email");
//        User employee2 = new User("Thinh","Bui", "Email2");
//        userList.add(employee);
//        userList.add(employee2);
        
        String employeeJsonString = this.gson.toJson(userList);

        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(employeeJsonString);
        out.flush();   
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action.equals("add")){
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            User user = new User(firstName, lastName, email);
            userList.add(user);
        }
    }
    
    
}