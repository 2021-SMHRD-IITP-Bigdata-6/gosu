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
import com.book.DTO.T_PriceDTO;


public class T_PriceDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	T_PriceDTO dto2;
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

	public ArrayList<T_PriceDTO> price() {
		ArrayList<T_PriceDTO> arr2 = new ArrayList<T_PriceDTO>();
		try {
			getConn();
			String sql = "select * from t_price ";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			// 7. 명령 후 처리
			while(rs.next() == true) {

				String book_place = rs.getString("book_place");
				String book_real_price = rs.getString("book_real_price");
				String book_isbn = rs.getString("book_isbn");
				String price_name = rs.getString("price_name");
				dto2 = new T_PriceDTO(book_real_price,book_place, book_isbn,price_name);
				arr2.add(dto2);


			}

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}

		
		return arr2;
	}//plat()
	
}
