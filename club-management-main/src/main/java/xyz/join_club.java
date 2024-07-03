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

@WebServlet("/join_club") // Changed URL pattern to /join_club
public class join_club extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");

        // Get parameters from request
        String name = req.getParameter("name");
        String sic = req.getParameter("sic");
        String gender = req.getParameter("gender");
        String branch = req.getParameter("branch");
        String year = req.getParameter("year");
        String phno = req.getParameter("phno");
        String email = req.getParameter("email");
        String club = req.getParameter("club");

        try {
            // Load Oracle JDBC Driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Establish connection
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521", "system", "Dhanada@2002");

            // Check if the user is already registered in the same club
            String qry1 = "SELECT * FROM club_table WHERE email='" + email + "' AND club='" + club + "'";
            // Check if the email is associated with an admin
            String qry2 = "SELECT * FROM admin_table WHERE email='" + email + "'";
            // Insert new student registration
            String qry3 = "INSERT INTO club_table (name, sic, gender, branch, year, phno, email, club) VALUES ('" + name + "','" + sic + "','" + gender + "','" + branch + "','" + year + "','" + phno + "','" + email + "','" + club + "')";

            Statement smt = con.createStatement();

            // Execute qry1 and qry2
            ResultSet rs1 = smt.executeQuery(qry1);
            boolean isRegisteredWithClub = rs1.next();
            rs1.close(); // Close the ResultSet for qry1

            ResultSet rs2 = smt.executeQuery(qry2);
            boolean isAdmin = rs2.next();
            rs2.close(); // Close the ResultSet for qry2

            if (isRegisteredWithClub || isAdmin) {
                // If user is registered with the same club or exists in the admin table, redirect to login page
                res.sendRedirect("login_pg.jsp");
            } else {
                // Insert new registration
                int i = smt.executeUpdate(qry3);
                if (i > 0) {
                    // If insert is successful, redirect to thank you page
                    res.sendRedirect("thank_you.jsp");
                } else {
                    // If insert fails, redirect to home page
                    out.println("<script>alert('Registration unsuccessful!');</script>");
                    res.sendRedirect("home_pg.jsp");
                }
            }

            // Close statement and connection
            smt.close();
            con.close();
        } catch (ClassNotFoundException ce) {
            System.out.println(ce);
        } catch (SQLException se) {
            System.out.println(se);
        }
        out.close();
    }
}
