package xyz;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/idea_submission")

public class Insert_Idea extends jakarta.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Retrieve the form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        
        try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","Dhanada@2002");
			Statement smt = con.createStatement();
						
			String qry1 = "insert into idea_table values('"+name+"','"+email+"','"+title+"','"+description+"')";
			
			smt.executeUpdate(qry1);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("student_pg.jsp");
	        dispatcher.forward(request, response);
			
		} catch(Exception ee) {
			ee.printStackTrace();
		}
        
    }
}
