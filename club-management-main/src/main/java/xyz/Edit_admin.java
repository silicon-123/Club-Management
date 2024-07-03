package xyz;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/updateTeam")

public class Edit_admin  extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","Dhanada@2002");
			Statement smt = con.createStatement();
			
	        String email = request.getParameter("email");

			String qry = "SELECT * FROM admin_table WHERE email='"+email+"'";
			ResultSet rs = smt.executeQuery(qry);
			String admin[] = new String[8];
			if(rs.next()) {
				admin[0]= rs.getString("name");
				admin[1]= rs.getString("clubid");
				admin[2]= rs.getString("gender");
				admin[3]= rs.getString("ph_no");
				admin[4]= rs.getString("email");		
				admin[5]= rs.getString("password");

			}
			
			request.setAttribute("admin", admin);
			RequestDispatcher rd = request.getRequestDispatcher("update_admin.jsp");
			rd.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		String name = req.getParameter("name");
		String clubid = req.getParameter("clubid");
		String gender = req.getParameter("gender");
		String ph_no = req.getParameter("ph_no");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		
		HttpSession session = req.getSession();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","swati");
			Statement smt = con.createStatement();
			
			String qry = "update admin_table set name='"+name+"',clubid='"+clubid+"',gender='"+gender+"',ph_no='"+ph_no+"',email='"+email+"',password='"+pass+"' where email='"+email+"'";
			System.out.print(qry);
			int i = smt.executeUpdate(qry);
			if(i>0) {
				session.setAttribute("msg", "1 record Updated");
			} else {
				session.setAttribute("msg", "Error !!!");
			}
			response.sendRedirect("view_team");
		} catch(Exception ee) {
			ee.printStackTrace();
		}
	}

}



