import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/Login")
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");

        String email = req.getParameter("email");
        String pass = req.getParameter("pass");

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521", "system", "Dhanada@2002");

            String qry1 = "select * from student_table where email='" + email + "' and password='" + pass + "'";
            String qry2 = "select * from admin_table where email='" + email + "' and password='" + pass + "'";

            Statement smt1 = con.createStatement();
            Statement smt2 = con.createStatement();
            ResultSet rs1 = smt1.executeQuery(qry1);
            ResultSet rs2 = smt2.executeQuery(qry2);

            if (rs2.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("email", email);
                session.setAttribute("userType", "admin");
                res.sendRedirect("admin_pg.jsp");
            } else if (rs1.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("email", email);
                session.setAttribute("userType", "student");
                res.sendRedirect("student_pg.jsp");
            } else {
                res.sendRedirect("login_pg.jsp");
            }

            smt1.close();
            con.close();
        } catch (ClassNotFoundException | SQLException ce) {
            System.out.println(ce);
        }
        out.close();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        res.sendRedirect("login_pg.jsp");
    }
}
