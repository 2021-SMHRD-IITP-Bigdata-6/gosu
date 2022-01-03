package com.book.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.DTO.T_BookDTO;
import com.book.DTO.T_EvaluationDTO;

@WebServlet("/searchCon")
public class searchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		
		Connection conn = null;
		PreparedStatement psmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스 파일 로딩 완료");


			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";
			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = " select * from T_book where book_name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			int cnt = psmt.executeUpdate();

			if (cnt > 0) {
				response.sendRedirect("");
			} else {

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
}