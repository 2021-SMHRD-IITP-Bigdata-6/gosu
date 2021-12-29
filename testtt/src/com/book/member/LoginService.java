package com.book.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;
import com.book.inter.Command;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		BookDTO bookDTO = new BookDTO(email, pw);
		BookDAO dao = new BookDAO();
		BookDTO dto = dao.Login(bookDTO);
		String nextpage = "";
		
		if (dto != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("dto", dto);
			nextpage = "/project/Home.jsp";
			System.out.println("성공");
			
		} else {
			
			nextpage = "/project/html5up-eventually/LoginFalse.jsp";
			System.out.println("실패");

		}
		return nextpage;
	}
}

