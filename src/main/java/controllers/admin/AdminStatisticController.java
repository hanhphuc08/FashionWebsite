package controllers.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.Impl.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.UserModel;

@WebServlet(urlPatterns = { "/admin/statistic" })
public class AdminStatisticController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		UserDao userDao = new UserDao();
		List<UserModel> listu = userDao.findAll();
		req.setAttribute("listu", listu);
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
