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

		
		// ����
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

		// 1. memberDAO�� �ش��ϴ� ��ɸ޼ҵ�� �� �����ֱ�(��ä����, �޼ҵ� , �Ű�����)
		// 2. cnt�� �������ֱ�(�޼ҵ�, ����)

		if (cnt > 0) {
			request.setAttribute("dto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");
			dis.forward(request, response);

			// JoinCon���� joinSuccess.jsp�� ���� ���� �� �ִ� �ΰ��� ���
			// 1. ����Ȱ��
			// 2. QueryStringȰ��
			nextpage = "Home.jsp";
		} else {

		}
		return nextpage;
	}

	
}