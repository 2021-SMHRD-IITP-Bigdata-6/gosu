package com.book.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;
import com.book.inter.Command;

public class UpdateService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String nextpage = "";
		BookDTO dto = (BookDTO) session.getAttribute("dto");
		String select = request.getParameter("select");
		
		if (select.equals("pw")) {
			
			String data = request.getParameter("data");
			BookDAO dao = new BookDAO();
			int cnt = dao.Update(dto, data);
			System.out.println(dto.getMem_id());
			
			if (cnt > 0) {
				session.setAttribute("dto", dto);
				nextpage = "/project/Home.jsp";
			} else {
				nextpage = "/project/Home.jsp";
			}
			
		} else if (select.equals("tel")) {
			
			String data = request.getParameter("data");
			BookDAO dao = new BookDAO();
			int cnt = dao.Update1(dto, data);
			System.out.println(dto.getMem_id());
			
			if (cnt > 0) {
				
				session.setAttribute("dto", dto);
				nextpage = "/project/Home.jsp";
			} else {
				nextpage = "/project/Home.jsp";
			}
			
		} else if (select.equals("name")) {
			
			String data = request.getParameter("data");
			BookDAO dao = new BookDAO();
			BookDTO vo = (BookDTO) session.getAttribute("dto");
			int cnt = dao.Update2(dto, data);
			System.out.println(dto.getMem_id());
			
			if (cnt > 0) {
				vo.setMem_name(data);
				session.setAttribute("dto", vo);
				nextpage = "/project/Home.jsp";

			} else {
				nextpage = "/project/Home.jsp";
			}
			
		}
		return nextpage;
	}

}
