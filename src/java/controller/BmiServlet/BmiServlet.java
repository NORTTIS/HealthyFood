

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/bmi")
public class BmiServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Get weight and height from the form
        double weight = Double.parseDouble(request.getParameter("weight"));
        double height = Double.parseDouble(request.getParameter("height")) / 100; // Convert to meters
        
        // Calculate BMI
        double bmi = weight / (height * height);
        
        // Interpret the BMI
        String desc;
        if (bmi < 18.5) {
            desc = "Underweight";
        } else if (bmi < 25) {
            desc = "Normal";
        } else if (bmi < 30) {
            desc = "Overweight";
        } else {
            desc = "Obese";
        }
        
        // Set attributes to be forwarded to JSP
        request.setAttribute("bmi", String.format("%.2f", bmi));
        request.setAttribute("desc", desc);
        
        // Forward the request back to the JSP
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
