package xyz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/display_ideas")
public class Check_ideaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","Dhanada@2002");
            Statement smt = con.createStatement();
            String qry = "SELECT * FROM idea_table";
            ResultSet rs = smt.executeQuery(qry);
            
            request.setAttribute("ideaResultSet", rs);
            RequestDispatcher dispatcher = request.getRequestDispatcher("check_ideas.jsp");
            dispatcher.forward(request, response);
            
            rs.close();
            smt.close();
            con.close();
        } catch (ClassNotFoundException | SQLException ee) {
            ee.printStackTrace();
        }
    }
}
