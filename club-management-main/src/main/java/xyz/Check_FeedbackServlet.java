package xyz;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet("/Check_Feedback")

public class Check_FeedbackServlet extends HttpServlet {
    
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521", "system", "Dhanada@2002");
            String qry1 = "SELECT * FROM feedback";
            Statement smt = con.createStatement();
            ResultSet rs = smt.executeQuery(qry1);

            req.setAttribute("feedbacks", rs);
            RequestDispatcher rd = req.getRequestDispatcher("check_feedbacks.jsp");
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
