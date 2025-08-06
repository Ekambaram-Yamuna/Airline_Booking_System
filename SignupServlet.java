package airline.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String fname = req.getParameter("first_name");
        String lname = req.getParameter("last_name");
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline", "root", "ganga123");

            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (first_name, last_name, email, password) VALUES (?, ?, ?, ?)");
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, email);
            ps.setString(4, pass);
            ps.executeUpdate();

            HttpSession session = req.getSession();
            session.setAttribute("firstName", fname);
            session.setAttribute("email", email);

            res.sendRedirect("index.jsp");
        } catch (Exception e) {
            res.getWriter().println("Signup Failed: " + e.getMessage());
        }
    }
}
