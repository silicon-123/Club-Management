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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/admin_register")
public class admin_register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");

        String name = req.getParameter("name");
        String clubid = req.getParameter("clubid");
        String gender = req.getParameter("gender");
        String ph_no = req.getParameter("ph_no");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");

        Connection con = null;
        PreparedStatement ps1 = null;
        PreparedStatement ps2 = null;
        PreparedStatement ps3 = null;
        ResultSet rs1 = null;
        ResultSet rs2 = null;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Dhanada@2002");

            String qry1 = "SELECT * FROM student_table WHERE email = ?";
            String qry2 = "SELECT * FROM admin_table WHERE email = ?";
            String qry3 = "INSERT INTO admin_table (name, clubid, gender, ph_no, email, pass) VALUES (?, ?, ?, ?, ?, ?)";

            ps1 = con.prepareStatement(qry1);
            ps1.setString(1, email);
            rs1 = ps1.executeQuery();

            ps2 = con.prepareStatement(qry2);
            ps2.setString(1, email);
            rs2 = ps2.executeQuery();

            if (rs1.next() || rs2.next()) {
                out.println("<script>alert('Email already exists!');</script>");
                res.sendRedirect("login_pg.jsp");
            } else {
                ps3 = con.prepareStatement(qry3);
                ps3.setString(1, name);
                ps3.setString(2, clubid);
                ps3.setString(3, gender);
                ps3.setString(4, ph_no);
                ps3.setString(5, email);
                ps3.setString(6, pass);

                int i = ps3.executeUpdate();
                if (i > 0) {
                    out.println("<script>alert('Registration successful!');</script>");
                    res.sendRedirect("home_pg.jsp");
                } else {
                    out.println("<script>alert('Registration unsuccessful!');</script>");
                    res.sendRedirect("home_pg.jsp");
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs1 != null) rs1.close();
                if (rs2 != null) rs2.close();
                if (ps1 != null) ps1.close();
                if (ps2 != null) ps2.close();
                if (ps3 != null) ps3.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        out.close();
    }
}
