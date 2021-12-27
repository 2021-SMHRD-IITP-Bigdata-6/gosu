package com.book.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;
import com.book.inter.Command;

public class UpdateService implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		String nextpage = "";

		BookDTO dto = (BookDTO) session.getAttribute("dto");
		String email = dto.getMem_id();

		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");

		BookDAO dao = new BookDAO();

		int cnt = dao.Update(pw, tel, name);
		System.out.println(email);
		if (cnt > 0) {

		//	response.sendRedirect("main.jsp");
			BookDTO Update_dto = new BookDTO(name, tel, pw);

			session.setAttribute("dto", Update_dto);

			session = request.getSession();
			nextpage = "main.jsp";
		} else {

		}
		return nextpage;
	}

}
