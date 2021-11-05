package edu.fa.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.fa.dao.AccountDAO;
import edu.fa.dao.ContentDAO;
import edu.fa.dao.impl.ContentDAOImpl;
import edu.fa.dao.ContentDAO;
import edu.fa.entities.Account;
import edu.fa.entities.Content;

/**
 * Servlet implementation class ViewContentController
 */
@WebServlet("/view-content")
public class ViewContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewContentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			ContentDAO contentDAO=new ContentDAOImpl();
			HttpSession session= request.getSession();
			Account account=(Account) session.getAttribute("account");
			List<Content> contents=contentDAO.viewContent(account.getId());
			request.setAttribute("contents", contents);
			request.getRequestDispatcher("views/viewContent.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
