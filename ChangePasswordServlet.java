package airline.controller;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("email") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String email = (String) session.getAttribute("email");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("message", "New passwords do not match.");
            RequestDispatcher rd = request.getRequestDispatcher("profilelogin.jsp?page=changePassword.jsp");
            rd.forward(request, response);
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "ganga123");

            String checkQuery = "SELECT password FROM users2 WHERE email=?";
            PreparedStatement checkPs = con.prepareStatement(checkQuery);
            checkPs.setString(1, email);
            ResultSet rs = checkPs.executeQuery();

            if (rs.next()) {
                String storedPassword = rs.getString("password");

                if (!storedPassword.equals(currentPassword)) {
                    request.setAttribute("message", "Current password is incorrect.");
                } else {
                    String updateSql = "UPDATE users2 SET password=? WHERE email=?";
                    PreparedStatement updatePs = con.prepareStatement(updateSql);
                    updatePs.setString(1, newPassword);
                    updatePs.setString(2, email);
                    updatePs.executeUpdate();

                    request.setAttribute("message", "Password changed successfully.");
                }
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Database error: " + e.getMessage());
        }

        RequestDispatcher rd = request.getRequestDispatcher("profilelogin.jsp?page=changePassword.jsp");
        rd.forward(request, response);
    }
}
