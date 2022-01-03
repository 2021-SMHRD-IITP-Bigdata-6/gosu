package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.book.DTO.BookDTO;
import com.book.DTO.T_EvaluationDTO;
import com.book.DTO.T_PlatformDTO;


public class T_PlatfromDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	T_PlatformDTO dto1;
	int cnt = 0;

	ResultSet rs = null;

	boolean check;
	Statement stmt;

	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스 파일 로딩 완료");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";

			conn = DriverManager.getConnection(url, dbid, dbpw);

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
	}

	public ArrayList<T_PlatformDTO> plat() {
		ArrayList<T_PlatformDTO> arr1 = new ArrayList<T_PlatformDTO>();
		try {
			getConn();
			String sql = "select * from t_platform ";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			// 7. 명령 후 처리
			while(rs.next() == true) {

				String platform_name = rs.getString("platform_name");
				String platform_img = rs.getString("platform_img");
				String platform_url = rs.getString("platform_url");
				String isbn = rs.getString("book_isbn");
				String book_name = rs.getString("book_name");
				dto1 = new T_PlatformDTO(platform_name,platform_img , platform_url, isbn, book_name);
				arr1.add(dto1);


			}

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}

		
		return arr1;
	}

}
