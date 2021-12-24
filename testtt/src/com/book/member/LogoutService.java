package com.book.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.inter.Command;

public class LogoutService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		// 세션 3가지 있음 가져오고 저장하고 삭제하고
		session.removeAttribute("dto");

		return  "/project/Home.jsp";
				
	}

}
