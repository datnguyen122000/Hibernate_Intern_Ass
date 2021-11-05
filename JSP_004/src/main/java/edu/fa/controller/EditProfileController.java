package edu.fa.controller;

import java.io.IOException;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.fa.dao.AccountDAO;
import edu.fa.dao.ProfileDAO;
import edu.fa.dao.impl.AccountDAOImpl;
import edu.fa.dao.impl.ProfileDAOImpl;
import edu.fa.dao.ProfileDAO;
import edu.fa.entities.Account;
import edu.fa.entities.Profile;

/**
 * Servlet implementation class EditController
 */
@WebServlet("/edit")
public class EditProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditProfileController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("views/editProfile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String phone = request.getParameter("phone");
			String description = request.getParameter("description");
			Profile profile = new Profile(firstName, lastName, phone, description);

			HttpSession session = request.getSession();
			Account account = (Account) session.getAttribute("account");

			ProfileDAO profileDAO = new ProfileDAOImpl();
			AccountDAO accountDAO = new AccountDAOImpl();

			if (account.getProfile() == null) {
				profileDAO.addProfile(profile);
				account.setProfile(profile);
				boolean check=accountDAO.updateAccount(account);
				if (check) {
					System.out.println("Add profile success!");
					request.setAttribute("checkSuccess", 3);
				}else {
					System.out.println("Update profile fail!");
					request.setAttribute("checkSuccess", 4);
				}
			} else {
				profile.setId(account.getProfile().getId());
				boolean check = profileDAO.updateProfile(profile);
				
				if (check) {
					System.out.println("Update profile success!");
					request.setAttribute("checkSuccess", 1);
				}else {
					System.out.println("Update profile fail!");
					request.setAttribute("checkSuccess", 0);
				}
			}
			request.getRequestDispatcher("views/editProfile.jsp").forward(request, response);
//			response.sendRedirect("/JSP_003/edit");
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
