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

@WebServlet("/updateStudent")
public class Edit_student extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Dhanada@2002");
            Statement smt = con.createStatement();
            
            String email = request.getParameter("email");
            String qry = "SELECT * FROM student_table WHERE email='" + email + "'";
            ResultSet rs = smt.executeQuery(qry);
            String[] student = new String[8];
            if (rs.next()) {
                student[0] = rs.getString("name");
                student[1] = rs.getString("sic");
                student[2] = rs.getString("gender");
                student[3] = rs.getString("branch");
                student[4] = rs.getString("year_of_gradn");
                student[5] = rs.getString("ph_no");
                student[6] = rs.getString("email");
                student[7] = rs.getString("password");
            }
            request.setAttribute("student", student);
            RequestDispatcher rd = request.getRequestDispatcher("update_student.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        String name = req.getParameter("name");
        String sic = req.getParameter("sic");
        String gender = req.getParameter("gender");
        String branch = req.getParameter("branch");
        String yog = req.getParameter("yog");
        String phno = req.getParameter("phno");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        
        HttpSession session = req.getSession();
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Dhanada@2002");
            Statement smt = con.createStatement();
            String qry = "UPDATE student_table SET name='" + name + "', sic='" + sic + "', gender='" + gender + "', branch='" + branch + "', year_of_gradn='" + yog + "', ph_no='" + phno + "', password='" + pass + "' WHERE email='" + email + "'";
            int i = smt.executeUpdate(qry);
            if (i > 0) {
                session.setAttribute("msg", "1 record Updated");
            } else {
                session.setAttribute("msg", "Error !!!");
            }
            response.sendRedirect("view_student");
        } catch (Exception ee) {
            ee.printStackTrace();
        }
    }
}
