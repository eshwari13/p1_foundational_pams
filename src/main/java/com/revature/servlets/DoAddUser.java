package com.revature.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revature.dao.UserDao;
import com.revature.dao.impl.UserDaoImpl;
import com.revature.model.User;

@WebServlet(urlPatterns = { "/doAddUser" })
public class DoAddUser extends HttpServlet {
	private static final long serialVersionUID = 4645721142572801105L;
	private UserDao userDao = new UserDaoImpl();

	public DoAddUser() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String loginId = (String) request.getParameter("loginId");
		String password = (String) request.getParameter("password");
		String role = (String) request.getParameter("role");

		User newUser = new User(loginId, password, role);
		String errorString = null;
		
		
		

		String regex = "^[a-zA-Z]{1,20}[0-9]{1,10}$";

		if (loginId == null || !loginId.matches(regex)) {
			errorString = "Enter Login ID or Passw !";
		}

		if (errorString == null) {
			
			userDao.save(newUser);
		}

		// Store infomation to request attribute, before forward to views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("newUser", newUser);

		// If error, forward to Edit page.
		if (errorString != null) {
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/users/addUserView.jsp");
			dispatcher.forward(request, response);
		}

		// If everything nice.
		// Redirect to the product listing page.
		else {
			//response.sendRedirect(request.getContextPath() + "/userList");
			HttpSession session = request.getSession(true);
			session.setAttribute("userIs", newUser);
			if (newUser.getRole().equals("admin")) {
				// Redirect to userInfo page.
				getServletContext().getRequestDispatcher("/WEB-INF/views/homes/_homeAdmin.jsp").forward(request, response);
			} else
				getServletContext().getRequestDispatcher("/WEB-INF/views/homes/_homeSignIn.jsp").forward(request, response);
		}
		}

	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}