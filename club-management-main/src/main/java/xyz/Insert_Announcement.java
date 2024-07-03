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


@WebServlet("/Insert_Announcement")
public class Insert_Announcement extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String announcement = request.getParameter("announcement");
        try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","Dhanada@2002");
			Statement smt = con.createStatement();
						
			String qry1 = "insert into announcement values('"+announcement+"')";
			smt.executeUpdate(qry1);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("admin_pg.jsp");
	        dispatcher.forward(request, response);
			
		} catch(Exception ee) {
			ee.printStackTrace();
		}
        
    }
}

