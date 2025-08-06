package airline.controller;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "ganga123");

            PreparedStatement ps = conn.prepareStatement("SELECT first_name FROM users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                HttpSession session = req.getSession();
                session.setAttribute("firstName", rs.getString("first_name"));  // ✅ Match JSP
                session.setAttribute("email", email);
                res.sendRedirect("index.jsp");
            } else {
                res.getWriter().println("Invalid Credentials");
            }
        } catch (Exception e) {
            res.getWriter().println("Login Failed: " + e.getMessage());
        }
    }
}

