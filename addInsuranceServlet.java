package airline.controller; // ← Replace with your real package name

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addInsuranceServlet")
public class addInsuranceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String provider = request.getParameter("provider");
        String policyNumber = request.getParameter("policyNumber");
        String startDate = request.getParameter("startDate");
        String expiryDate = request.getParameter("expiryDate");
        String coverageType = request.getParameter("coverageType");
        String notes = request.getParameter("notes");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL 8+
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/airline", "root", "ganga123"
            );

            String query = "INSERT INTO insurance_entries (provider, policy_number, start_date, expiry_date, coverage_type, notes) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, provider);
            ps.setString(2, policyNumber);
            ps.setString(3, startDate);
            ps.setString(4, expiryDate);
            ps.setString(5, coverageType);
            ps.setString(6, notes);

            int result = ps.executeUpdate();
            if (result > 0) {
                request.setAttribute("status", "success");
                request.setAttribute("message", "Insurance entry added successfully.");
            } else {
                request.setAttribute("status", "error");
                request.setAttribute("message", "Failed to add insurance entry.");
            }

            ps.close();
            con.close();

        } catch (Exception e) {
            request.setAttribute("status", "error");
            request.setAttribute("message", "Error: " + e.getMessage());
        }

        request.getRequestDispatcher("insurance.jsp").forward(request, response);
    }
}
