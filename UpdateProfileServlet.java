package airline.controller;
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
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

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String oldEmail = (String) session.getAttribute("email");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "ganga123");

            String sql = "UPDATE users2 SET first_name=?, last_name=?, email=? WHERE email=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, email);
            ps.setString(4, oldEmail);

            int rowsUpdated = ps.executeUpdate();

            if (rowsUpdated > 0) {
                // Update session values
                session.setAttribute("firstName", firstName);
                session.setAttribute("lastName", lastName);
                session.setAttribute("email", email);

                request.setAttribute("message", "Profile updated successfully.");
            } else {
                request.setAttribute("message", "Update failed.");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Database error: " + e.getMessage());
        }

        RequestDispatcher rd = request.getRequestDispatcher("profilelogin.jsp?page=accountSettings.jsp");
        rd.forward(request, response);
    }
}

