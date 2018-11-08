import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double coordinateX = Double.parseDouble(req.getParameter("valueOfX"));
        double coordinateY = Double.parseDouble(req.getParameter("valueOfY"));
        double radius = Double.parseDouble(req.getParameter("valueOfR"));
        req.setAttribute("result", checkArea(coordinateX, coordinateY, radius));
        req.getRequestDispatcher("template/result.jsp").forward(req, resp);
    }

    private boolean checkArea(double x, double y, double r) {
        if (x >= 0) {
            if (y >= 0 && y <= r) {
                return true;
            } else if (y <= 0 && (x - y) <= r) {
                return true;
            }
            return false;
        } else if (Math.sqrt(x * x + y * y) <= r / 2) {
            return true;
        }
        return false;
    }
}
