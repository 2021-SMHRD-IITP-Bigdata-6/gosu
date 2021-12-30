package com.book.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.DAO.BookDAO;
import com.book.inter.Command;

public class DeleteSerivce implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("delete_email");
		System.out.println("삭제하는 이메일 :" + email);
		BookDAO dao = new BookDAO();
		int cnt = dao.Delete(email);
		return "/project/html5up-eventually/selectMember.jsp";
	}
}
