package com.book.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.DAO.T_EvaluationDAO;
import com.book.DTO.T_EvaluationDTO;

@WebServlet("/WishlistService")
public class WishlistService extends HttpServlet {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String nextpage = "";
		T_EvaluationDTO dto = (T_EvaluationDTO) session.getAttribute("dto");
		String select = request.getParameter("select");
		
		if(select.equals("list")) {
			String data = request.getParameter("data");
			T_EvaluationDAO dao = new T_EvaluationDAO();
			dao.isbn(dto);
		}do {
			session.setAttribute("dto", dto);
			nextpage = "/project/WishList.jsp";
		}while(false); {
			nextpage = "/project/BookInfo.jsp";
		}
		
		return nextpage;
	}
		
}