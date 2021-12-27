package com.book.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;
import com.book.inter.Command;

public class JoinService implements Command{


		

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		
		// 수정
//		String email = request.getParameter("email");
//		String pw = request.getParameter("pw");
//		String tel = request.getParameter("tel");
//		String address = request.getParameter("address");
//		
		String nextpage = "";

		BookDAO dao = new BookDAO();
		int cnt = 0;
	//	BookDTO dto = new BookDTO(mem_id, mem_pw, mem_name, mem_tel, mem_age, mem_gender, date);

	///	int cnt = dao.Join(dto);

		// 1. memberDAO에 해당하는 기능메소드로 값 보내주기(객채생성, 메소드 , 매개변수)
		// 2. cnt값 리터해주기(메소드, 리턴)

		if (cnt > 0) {
			request.setAttribute("dto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");
			dis.forward(request, response);

			// JoinCon에서 joinSuccess.jsp로 값을 보낼 수 있는 두가지 방법
			// 1. 세션활용
			// 2. QueryString활용
			nextpage = "main.jsp";
		} else {

		}
		return nextpage;
	}

	
}