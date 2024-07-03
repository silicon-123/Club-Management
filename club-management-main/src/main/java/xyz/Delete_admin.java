package xyz;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet("/deleteTeam")

public class Delete_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","Dhanada@2002");
			Statement smt = con.createStatement();
			
			String email = request.getParameter("email");
			
			String qry = "DELETE FROM admin_table WHERE email='"+email+"'";
			int i = smt.executeUpdate(qry);
			if(i>0) {
				session.setAttribute("msg", "1 record deleted");
			} else {
				session.setAttribute("msg", "Error !!!");
			}
			response.sendRedirect("view_team");
		} catch(Exception ee) {
			ee.printStackTrace();
		}
	}

}

