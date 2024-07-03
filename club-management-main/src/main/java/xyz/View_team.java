package xyz;


import jakarta.servlet.RequestDispatcher;
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

@WebServlet("/view_team")

public class View_team extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
        	
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521", "system", "Dhanada@2002");
            String qry1 = "SELECT * FROM admin_table";
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery(qry1);

            req.setAttribute("resultSet", rs);
            RequestDispatcher rd = req.getRequestDispatcher("display_team.jsp");
            rd.forward(req, res);

            smt.close();
            con.close();
        } catch (ClassNotFoundException ce) {
            System.out.println(ce);
        } catch (SQLException se) {
            System.out.println(se);
        }
    }
}


	