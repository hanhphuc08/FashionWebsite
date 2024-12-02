package controllers.admin;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import dao.Impl.OrderDao;
import dao.Impl.ProductDao;
import dao.Impl.UserDao;
import jakarta.persistence.criteria.Order;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.OrderModel;
import models.ProductModel;
import models.UserModel;

@WebServlet(urlPatterns = { "/admin/statistic" })
public class AdminStatisticController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	OrderDao orderDao = new OrderDao();
	ProductDao productDao = new ProductDao();
	
	private String formatCurrency(double amount) {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        return formatter.format(amount) + " VND";
    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		UserDao userDao = new UserDao();
		List<UserModel> listu = userDao.findAll();
		req.setAttribute("listu", listu);
		
		int orderTotal = orderDao.getTotalOrders();
		int orderTotalToday = orderDao.getTotalOrdersToday();
		int orderTotalMonth = orderDao.getTotalOrdersThisMonth();
		int orderCancelled = orderDao.getTotalCancelledOrders();
		System.out.println("Order Cancelled: " + orderCancelled); 
		
		req.setAttribute("orderTotal", orderTotal);
		req.setAttribute("orderTotalToday", orderTotalToday);
		req.setAttribute("orderTotalMonth", orderTotalMonth);
		req.setAttribute("orderCancelled", orderCancelled);
		
		
		
		double totalAmount = orderDao.getTotalAmount();
	    double totalAmountToday = orderDao.getTotalAmountToday();
	    double totalAmountThisMonth = orderDao.getTotalAmountThisMonth();
	    double currentBalance = (35 * totalAmount) / 100;
	    
	    String formattedTotalAmount = formatCurrency(totalAmount);
        String formattedTotalAmountToday = formatCurrency(totalAmountToday);
        String formattedTotalAmountThisMonth = formatCurrency(totalAmountThisMonth);
        String formattedCurrentBalance = formatCurrency(currentBalance);
        
        req.setAttribute("totalAmount", formattedTotalAmount);
        req.setAttribute("totalAmountToday", formattedTotalAmountToday);
        req.setAttribute("totalAmountThisMonth", formattedTotalAmountThisMonth);
        req.setAttribute("currentBalance", formattedCurrentBalance);
        
        
        List<ProductModel> topProducts = productDao.getTop5BestSellingProducts();

        for (ProductModel product : topProducts) {
            product.setPriceFormatted(formatCurrency(product.getPrice()));
            product.setTotalAmountFormatted(formatCurrency(product.getTotalAmount()));
        }

        req.setAttribute("topProducts", topProducts);
        
        List<OrderModel> recentOrders = orderDao.getTop5RecentOrders();

        for (OrderModel order : recentOrders) {
        
            String formattedTotalAmount2 = formatCurrency(order.getTotalAmount());
            order.setFormattedTotalAmount(formattedTotalAmount2);  
        }

        req.setAttribute("recentOrders", recentOrders);
        
		
		req.getRequestDispatcher("/views/admin/adminStatistic.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String userIdsParam = request.getParameter("userIds");

		if (userIdsParam == null || userIdsParam.trim().isEmpty()) {
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			response.getWriter().write("No user IDs provided.");
			return;
		}

		String[] idsArray = userIdsParam.split(",");
		List<Integer> ids = new ArrayList<>();

		try {
			for (String id : idsArray) {
				if (id != null && !id.trim().isEmpty()) {
					ids.add(Integer.parseInt(id.trim()));
				}
			}

			if (ids.isEmpty()) {
				response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
				response.getWriter().write("No valid user IDs provided.");
				return;
			}

			UserDao userDao = new UserDao();
			userDao.delete(ids);

			response.setStatus(HttpServletResponse.SC_OK);
			response.getWriter().write("Users deleted successfully.");
		} catch (NumberFormatException e) {
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			response.getWriter().write("Invalid user ID format: " + e.getMessage());
		} catch (Exception e) {
			response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			response.getWriter().write("Error deleting users: " + e.getMessage());
		}
	}

}
