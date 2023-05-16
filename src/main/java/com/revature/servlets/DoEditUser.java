package com.revature.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.revature.dao.UserDao;
import com.revature.dao.impl.UserDaoImpl;
import com.revature.model.User;

@WebServlet(urlPatterns = { "/doEditUser" })
public class DoEditUser extends HttpServlet {
	private static final long serialVersionUID = 4645721142572801104L;
	private UserDao userDao = new UserDaoImpl();

	public DoEditUser() {
		super();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String loginId = (String) request.getParameter("loginId");
		String password = (String) request.getParameter("password");
		//String role = (String) request.getParameter("role");
		String patientName = (String) request.getParameter("patientName");
		String email = (String) request.getParameter("email");
		String phoneNo = (String) request.getParameter("phoneNo");
		String birthDate = (String) request.getParameter("birthDate");
		int age = Integer.valueOf( request.getParameter("age"));
		String physicalDisability = (String) request.getParameter("physicalDisability");
		String identityProof = (String) request.getParameter("identityProof");
		String address = (String) request.getParameter("address");
		//User editUser = new User(loginId, password, role,patientName,email,phoneNo,birthDate);
		User editUser = new User(loginId, password,patientName,email,phoneNo,birthDate,age,physicalDisability,identityProof,address);
		userDao.update(loginId, editUser);
		//response.sendRedirect(request.getContextPath() + "\"/WEB-INF/views/homes/_homeSignIn.jsp\"");
		
		HttpSession session = request.getSession(true);
		session.setAttribute("userIs", editUser);
			// Redirect to userInfo page.
			getServletContext().getRequestDispatcher("/WEB-INF/views/homes/_homeUpdate.jsp").forward(request, response);

			System.out.println(editUser);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	

}
