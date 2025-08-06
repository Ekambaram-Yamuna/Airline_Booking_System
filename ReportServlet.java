package airline.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Update your DB details here
    private static final String DB_URL = "jdbc:mysql://localhost:3306/airline";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "ganga123";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form values
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String issueType = request.getParameter("issueType");
        String message = request.getParameter("message");

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            // Prepare SQL
            String sql = "INSERT INTO reports (name, email, issueType, message) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, issueType);
            ps.setString(4, message);

            int result = ps.executeUpdate();
            ps.close();
            conn.close();

            if (result > 0) {
                request.setAttribute("status", "success");
                request.setAttribute("message", "Your issue has been reported successfully. We will get back to you soon!");
            } else {
                request.setAttribute("status", "error");
                request.setAttribute("message", "Failed to submit your report. Please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("status", "error");
            request.setAttribute("message", "Something went wrong: " + e.getMessage());
        }

        // Forward to same page
        request.getRequestDispatcher("report.jsp").forward(request, response);
    }
}
