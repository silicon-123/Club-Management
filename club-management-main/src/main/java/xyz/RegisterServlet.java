package xyz;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/register")

public class RegisterServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req,res);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		res.setContentType("text/html");
		
		String name = req.getParameter("name");
		String sic = req.getParameter("sic");
		String gender = req.getParameter("gender");
		String branch = req.getParameter("branch");
		String yog = req.getParameter("yog");
		String phno = req.getParameter("phno");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521","system","Dhanada@2002");//mysql 3306
			
			String qry1 = "SELECT * FROM student_table WHERE email='"+email+"'";
			String qry2 = "SELECT * FROM admin_table WHERE email='"+email+"'";
			String qry3 = "insert into student_table values('"+name+"','"+sic+"','"+gender+"','"+branch+"','"+yog+"','"+phno+"','"+email+"','"+pass+"')";	
	
			
			Statement smt = con.createStatement();
			ResultSet rs1 = smt.executeQuery(qry1);
			ResultSet rs2 = smt.executeQuery(qry2);
	
			if(rs1.next() || rs2.next()) {
				res.sendRedirect("login_pg.jsp");
			}
			else {
				
				int i = smt.executeUpdate(qry3);
				if(rs1.next() || rs2.next()) {
				    res.sendRedirect("login_pg.jsp");
				}
				else {
					if(i>0) {
						out.println("<script>alert('Registration successful!');</script>");
						res.sendRedirect("home_pg.jsp");

				    } else {
				    	out.println("<script>alert('Registration unsuccessful!');</script>");
				    	res.sendRedirect("home_pg.jsp");
				    }
				}
			}
			smt.close();
			con.close();
		}
		catch(ClassNotFoundException ce){
			System.out.println(ce);
		}catch(SQLException se){
			System.out.println(se);
		}
		out.close(); 
	}

}
