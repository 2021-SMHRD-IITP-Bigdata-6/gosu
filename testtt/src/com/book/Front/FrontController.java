package com.book.Front;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;
import com.book.inter.Command;
import com.book.member.DeleteSerivce;
import com.book.member.JoinService;
import com.book.member.LoginService;
import com.book.member.LogoutService;
import com.book.member.UpdateService;
import com.category.DAO.categoryService;
import com.google.gson.Gson;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uri = request.getRequestURI();
		System.out.println(uri);
		String path = request.getContextPath();
		System.out.println(path);

		String command = uri.substring(path.length()+1);
		System.out.println("요청기능" + command);

		Command com = null;
		String nextpage = null;
		if (command.equals("LoginCon.do")) {

			com = new LoginService();
			nextpage = com.execute(request, response);

		} else if (command.equals("LogoutCon.do")) {

			com = new LogoutService();
			nextpage = com.execute(request, response);
		} else if (command.equals("JoinCon.do")) {

			com = new JoinService();
			com.execute(request, response);
		} else if (command.equals("UpdateCon.do")) {

			com = new UpdateService();
			nextpage = com.execute(request, response);
		} else if(command.equals("DeleteCon.do")) {

			com = new DeleteSerivce();
		    nextpage = com.execute(request, response); // 호출하고 불러줌
		
		}else if(command.equals("categorySearch.do")) {
			com = new categoryService();
			nextpage = com.execute(request, response);
			
		}else if(command.equals("memberSearch.do")) {
			String email = request.getParameter("email");
			
			// DAO 객체 생성
			
			BookDAO dao = new BookDAO();
			
			// dao의 메서드 사용
			ArrayList<BookDTO> list = dao.selectMember(email);
			
			// ArrayList > json
			Gson gson = new Gson();
			String json = gson.toJson(list);
			// 인코딩
			response.setCharacterEncoding("utf-8");
			// 응답
			
			PrintWriter out = response.getWriter();
			out.print(json);
		}else if(command.equals("check.do")) {
			// 1. 파라미터 수집
			
			String email = request.getParameter("email");
			// 2. DAO 객체 생성
			BookDAO dao = new BookDAO();
			// 3, DAO 객체의 메서드 사용
			boolean check = dao.emailCheck(email);
			// 4. PrintWriter 객체 생성
			PrintWriter out = response.getWriter();
			// 5. 응답
			out.print(check);
			 
		}
		if (nextpage != null) { 
			response.sendRedirect(nextpage);
		}
	}
}
