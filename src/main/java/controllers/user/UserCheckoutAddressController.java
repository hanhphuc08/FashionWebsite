package controllers.user;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;

import dao.Impl.CartDao;
import dao.Impl.CheckOutAddressDao;
import dao.Impl.DistrictDao;
import dao.Impl.ProvinceDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.CartModel;
import models.DistrictModel;
import models.ProvinceModel;
import models.UserAddressModel;
import models.UserModel;

@WebServlet(urlPatterns={"/user/checkoutAddress"})
public class UserCheckoutAddressController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	 private CheckOutAddressDao addressDao = new CheckOutAddressDao();
	 private ProvinceDao provinceDao = new ProvinceDao();
	 private DistrictDao districtDao = new DistrictDao();
	 private CartDao cartDao = new CartDao();
	 private String formatCurrency(double amount) {
	        DecimalFormat formatter = new DecimalFormat("###,###,###");
	        return formatter.format(amount) + " VND";
	    }
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

		if (user == null) {
            // Redirect to login if user is not logged in
            String currentUrl = req.getRequestURL() +
                    (req.getQueryString() != null ? "?" + req.getQueryString() : "");
            session = req.getSession(true);
            session.setAttribute("redirectUrl", currentUrl);
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
		
		UserAddressModel address = addressDao.getCheckOutAddress(user.getUserID());
		
		if(address != null)
		{
			req.setAttribute("address", address);
		}
		/*
		 * List<ProvinceModel> provinces = provinceDao.getAllProvinces();
		 * req.setAttribute("provinces", provinces);
		 * 
		 * if (address != null && address.getProvinceID() > 0) { List<DistrictModel>
		 * districts = districtDao.getDistrictsByProvinceID(address.getProvinceID());
		 * req.setAttribute("districts", districts); } else {
		 * req.setAttribute("districts", null); }
		 */
	     	
		List<CartModel> cartItems = cartDao.getAllCartWithDetail(user.getUserID());
	    
	    double totalAmount = 0;
        for(CartModel item : cartItems) {
        	totalAmount += item.getPrice() * item.getQuantity();
        }
        double shipping = 0;
        double serviceTax = 0;
        double finalToTal = totalAmount + shipping + serviceTax;
        
        req.setAttribute("totalAmountFormatted", formatCurrency(totalAmount));
        req.setAttribute("shippingFormatted", formatCurrency(shipping));
        req.setAttribute("serviceTaxFormatted", formatCurrency(serviceTax));
        req.setAttribute("finalTotalFormatted", formatCurrency(finalToTal));
	    
	    req.setAttribute("cartItems", cartItems);
		
		req.getRequestDispatcher("/views/user/userCheckoutAddress.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			HttpSession session = req.getSession(false);
	        UserModel user = (session != null) ? (UserModel) session.getAttribute("account") : null;

	        if (user == null) {
	            resp.sendRedirect(req.getContextPath() + "/login");
	            return;
	        }
	        System.out.println("Full Name: " + req.getParameter("fullname_invoice"));
	        System.out.println("Email: " + req.getParameter("emailaddress_invoice"));
	        System.out.println("Phone: " + req.getParameter("phonenumber_invoice"));
	        System.out.println("Province: " + req.getParameter("provinceName"));
	        System.out.println("District: " + req.getParameter("districtName"));
	        System.out.println("Address: " + req.getParameter("address"));
	        
	        String fullName = req.getParameter("fullname_invoice");
	        String email = req.getParameter("emailaddress_invoice");
	        String phone = req.getParameter("phonenumber_invoice");
	        String provinceName = req.getParameter("provinceName");
	        String districtName = req.getParameter("districtName");
	        String specificAddress = req.getParameter("address");
	        
	        if (fullName == null || email == null || phone == null || provinceName == null || districtName == null || specificAddress == null
	                || fullName.isEmpty() || email.isEmpty() || phone.isEmpty() || provinceName.isEmpty() || districtName.isEmpty() || specificAddress.isEmpty()) {
	            req.setAttribute("errorMessage", "Vui lòng điền đầy đủ thông tin trước khi tiếp tục.");
	            req.getRequestDispatcher("/views/user/userCheckoutAddress.jsp").forward(req, resp);
	            return;
	        }
	        
	        UserAddressModel address = new UserAddressModel();
	        address.setUserID(user.getUserID());
	        address.setFullNameUA(fullName);
	        address.setEmailUA(email);
	        address.setPhoneUA(phone);
	        address.setProvinceName(provinceName);
	        address.setDistrictName(districtName);
	        address.setSpecificAddress(specificAddress);
	        
	        UserAddressModel existingAddress = addressDao.getCheckOutAddress(user.getUserID());
	        boolean isSuccess;
	        
	        if (existingAddress == null || (existingAddress.getProvinceName() == null && 
                    existingAddress.getDistrictName() == null && 
                    existingAddress.getSpecificAddress() == null)) {
	        		System.out.println("Adding new address for UserID: " + user.getUserID());
	        			isSuccess = addressDao.addCheckOutAddress(address);
	        		} else {
	        			System.out.println("Updating address for UserID: " + user.getUserID());
	        		isSuccess = addressDao.updateCheckOutAddress(address);
	        		}
	        
	        if (isSuccess) {
	            req.setAttribute("successMessage", "Cập nhật địa chỉ giao hàng thành công.");
	        } else {
	            req.setAttribute("errorMessage", "Không thể cập nhật địa chỉ giao hàng. Vui lòng thử lại.");
	        }
	        
	        String action = req.getParameter("action");
	        if ("review".equals(action)) {
	            resp.sendRedirect(req.getContextPath() + "/user/checkoutReview");
	        } else {
	            resp.sendRedirect(req.getContextPath() + "/user/checkoutAddress");
	        }
//	        resp.sendRedirect(req.getContextPath() + "/user/checkoutAddress");
	}

}
