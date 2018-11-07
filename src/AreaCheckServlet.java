import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double coordinateX = Double.parseDouble(req.getParameter("coord_x"));
        double coordinateY = Double.parseDouble(req.getParameter("coord_y"));
        double radius = Double.parseDouble(req.getParameter("radius"));
        req.setAttribute("result", checkArea(coordinateX, coordinateY, radius));
        req.getRequestDispatcher("result.jsp").forward(req, resp);
    }

    private boolean checkArea(double x, double y, double r){
        if(x >= 0){
            if(Math.sqrt(x * x + y * y) <= r / 2){
                return true;
            }
            else if(y <= 0 && (x - y) <= r){
                return true;
            }
            return false;
        }
        else if(x >= -r / 2 && y <= 0 && y >= -r){
            return true;
        }
        return false;
    }
}
