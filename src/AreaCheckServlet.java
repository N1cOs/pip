import domain.Result;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Logger;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double coordinateX = Double.parseDouble(req.getParameter("valueOfX"));
        double coordinateY = Double.parseDouble(req.getParameter("valueOfY"));
        double radius = Double.parseDouble(req.getParameter("valueOfR"));
        boolean result = checkArea(coordinateX, coordinateY, radius);
        ArrayList<Result> previousResults = (ArrayList<Result>) req.getSession().getAttribute("previousResults");
        Result resultDomain = new Result();
        resultDomain.setResultDate(new Date());
        resultDomain.setValueOfX(coordinateX);
        resultDomain.setValueOfY(coordinateY);
        resultDomain.setValueOfR(radius);
        resultDomain.setResult(result);
        previousResults.add(resultDomain);
        req.setAttribute("result", result);
        req.setAttribute("previousResults", previousResults);
        req.getRequestDispatcher("result.jsp").forward(req, resp);
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
