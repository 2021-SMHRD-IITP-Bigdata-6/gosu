package com.book.member;

import java.io.IOException;
import java.io.PrintWriter;

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
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String nextpage = "";

		BookDAO dao = new BookDAO();
		int cnt = 0;
		// db��ȸ�� ����
		BookDTO dto = new BookDTO(email, pw, name, tel, age, gender);

		 cnt = dao.Join(dto);

		// 1. memberDAO�� �ش��ϴ� ��ɸ޼ҵ�� �� �����ֱ�(��ä����, �޼ҵ� , �Ű�����)
		// 2. cnt�� �������ֱ�(�޼ҵ�, ����)

		if (cnt > 0) {
			request.setAttribute("dto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");
			dis.forward(request, response);

			// JoinCon���� joinSuccess.jsp�� ���� ���� �� �ִ� �ΰ��� ���
			// 1. ����Ȱ��
			// 2. QueryStringȰ��
<<<<<<< HEAD
			nextpage = "Home.jsp";
=======
			nextpage = "/project/Home.jsp";
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-6/gosu.git
		} else {

		}
		return nextpage;
	}

	
}