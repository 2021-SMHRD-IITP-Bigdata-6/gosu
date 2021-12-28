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

		
		// ����
		String art = request.getParameter("art");
		String nextpage = "";

		categoryDAO dao = new categoryDAO();
		int cnt = 0;
		// db��ȸ�� ����
		categoryDTO dto = new categoryDTO(art);

		 cnt = dao.category(dto);

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
			nextpage = "/project/Home.jsp";
		} else {

		}
		return nextpage;
	}

	
}