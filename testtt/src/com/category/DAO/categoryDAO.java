package com.category.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;

public class categoryDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	ResultSet rs = null;
	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스 파일 로딩 완료");
			
		
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";
			
			conn = DriverManager.getConnection(url,dbid,dbpw);
			
		

			// 3. DB에서 사용하는 id/pw를 인증
			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		System.out.println("무조건실행");
		try {
			if (rs != null) {
				psmt.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}//close()
	
	/*
	 * public ArrayList<categoryDTO> category(String[] buttonlist) {
	 * 
	 * try { getConn(); String sql = "select * from t_book  = ?"; psmt =
	 * conn.prepareStatement(sql); psmt.setString(1, art);
	 * 
	 * // 6. slq명령문 실행 rs = psmt.executeQuery(); // 7. 명령 후 처리 if (rs.next()) {
	 * String aart = rs.getString(1); }
	 * 
	 * } catch (Exception e) { System.out.println("클래스파일 로딩실패");
	 * e.printStackTrace(); } finally { close(); }
	 * 
	 * return list; }
	 */
}//DAO
