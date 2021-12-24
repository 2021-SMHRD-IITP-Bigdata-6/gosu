package com.book.Front;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.inter.Command;
import com.book.member.LoginService;
import com.book.member.LogoutService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uri = request.getRequestURI();
		System.out.println(uri);
		String path = request.getContextPath();
		System.out.println(path);
		
		String command = uri.substring(path.length()+20);
		System.out.println("요청기능" + command);
		
		Command com = null;
		String nextpage = null;
		if (command.equals("LoginCon.do")) {
			
		    com = new LoginService();
			nextpage= com.execute(request,response);
			   
		}else if(command.equals("LogoutCon.do")) {
			
			com = new LogoutService();
			nextpage =com.execute(request, response);
		}
		
		if (nextpage != null) { 
			response.sendRedirect(nextpage);
		}
	}

}
