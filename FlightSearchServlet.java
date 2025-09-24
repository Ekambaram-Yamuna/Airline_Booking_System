package airline.controller;

import java.io.*;
import java.sql.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/FlightSearchServlet")
public class FlightSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String from = request.getParameter("from");
        String to = request.getParameter("to");

        List<Map<String, String>> filteredFlightsList = new ArrayList<>();

        try {
            // Load JDBC driver and connect to DB
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/airplane", "root", "admin123");

            // Include stop_location
            String query = "SELECT flight_no, departure_time, arrival_time, duration, stops, stop_location, source, destination, fare FROM flights WHERE source=? AND destination=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, from);
            ps.setString(2, to);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Map<String, String> flight = new HashMap<>();
                flight.put("flight_no", rs.getString("flight_no"));
                flight.put("departure_time", rs.getString("departure_time"));
                flight.put("arrival_time", rs.getString("arrival_time"));
                flight.put("duration", rs.getString("duration"));
                flight.put("stops", rs.getString("stops"));
                flight.put("stop_location", rs.getString("stop_location")); // ← NEW
                flight.put("source", rs.getString("source"));
                flight.put("destination", rs.getString("destination"));
                flight.put("fare", rs.getString("fare"));
                filteredFlightsList.add(flight);
            }

            rs.close();
            ps.close();
            con.close();

            request.setAttribute("flights", filteredFlightsList);
            request.getRequestDispatcher("internation.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print("Error: " + e.getMessage());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
