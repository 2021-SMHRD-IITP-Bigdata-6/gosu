package com.category.DAO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;
import com.book.inter.Command;

public class categoryService implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		
		// 수정
		String art = request.getParameter("art");
		String nextpage = "";

		categoryDAO dao = new categoryDAO();
		int cnt = 0;
		// db조회로 변경
		categoryDTO dto = new categoryDTO(art);

		 cnt = dao.category(dto);

		// 1. memberDAO에 해당하는 기능메소드로 값 보내주기(객채생성, 메소드 , 매개변수)
		// 2. cnt값 리터해주기(메소드, 리턴)

		if (cnt > 0) {
			request.setAttribute("dto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");
			dis.forward(request, response);

			// JoinCon에서 joinSuccess.jsp로 값을 보낼 수 있는 두가지 방법
			// 1. 세션활용
			// 2. QueryString활용
			nextpage = "Home.jsp";
			nextpage = "/project/Home.jsp";
		} else {

		}
		return nextpage;
	}

	
}