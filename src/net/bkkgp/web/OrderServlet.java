package net.bkkgp.web;

import net.bkkgp.dao.CustomerrDao;
import net.bkkgp.dao.OrderDao;
import net.bkkgp.model.Customerr;
import net.bkkgp.model.Orderr;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/orderr")
public class OrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private OrderDao orderDao;

    public void init() {
        orderDao = new OrderDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String idCustomer = request.getParameter("idCustomer");
        String dateSend = request.getParameter("dateSend");
        String idTire = request.getParameter("idTire");
        String numTire = request.getParameter("numTire");
        String brand2 = request.getParameter("brand2");
        String price2 = request.getParameter("price2");
        String total = request.getParameter("total");


        Orderr orderr = new Orderr();
        orderr.setIdCustomer(idCustomer);
        orderr.setDateSend(dateSend);
        orderr.setIdTire(idTire);
        orderr.setNumTire(numTire);
        orderr.setBrand2(brand2);
        orderr.setPrice2(price2);
        orderr.setTotal(total);


System.out.println(total);
        try {
            orderDao.registerOrder(orderr);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("order_add.jsp");
    }
}
