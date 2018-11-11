import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Validating data
        String valueOfR = req.getParameter("valueOfR");
        String valueOfX = req.getParameter("valueOfX");
        String valueOfY = req.getParameter("valueOfY");
        try {
            Double r = Double.parseDouble(valueOfR);
            Double x = Double.parseDouble(valueOfX);
            Double y = Double.parseDouble(valueOfY);
            if (checkRXY(r, x, y)) {
                req.setAttribute("correct", "true");
                req.getRequestDispatcher("check").forward(req, resp);
            } else {
                req.setAttribute("correct", "false");
                req.getRequestDispatcher("check").forward(req, resp);
            }
        } catch (Exception e) {
            req.setAttribute("correct", "false");
            req.getRequestDispatcher("check").forward(req, resp);
        }

    }

    boolean checkRXY(Double r, Double x, Double y) {
        return (1 <= r && r <= 4 && x >= -2 && x <= 2 && y >= -5 && y <= 3);

    }


}
