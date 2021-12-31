package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.book.DTO.T_BookDTO;
import com.book.DTO.T_EvaluationDTO;

public class T_BookDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	T_BookDTO dto = null;
	T_EvaluationDTO dto1 = null;
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

	public ArrayList<T_BookDTO> selectbook() {

		// Select.html 에서 보낸 id 값 받아오기
		// String id = request.getParameter("id");

		ArrayList<T_BookDTO> arr = new ArrayList<T_BookDTO>();

		try {
			getConn();
			String sql = "select * from t_book";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);

			// 6. slq명령문 실행
			// executoUpdate() : DB의 내용에 변경이 일어나는경우, insert, deletd, update
			// 리턴을 int로 해준다. 몇행이 성공 했는지
			// executeQuery() : select문 사용시
			// ResultSet으로 리턴한다.

			rs = psmt.executeQuery();

			// 명령 후 처리

			while (rs.next() == true) {
				String book_nmae = rs.getString(2);
				int book_price = rs.getInt(3);
				int book_grade = rs.getInt(4);
				String book_publisher = rs.getString(5);
				String book_category = rs.getString(6);
				String book_explain = rs.getString(7);
				String book_author = rs.getString(8);
				int book_pages = rs.getInt(9);
				String book_img = rs.getString(10);
				String book_isbn = rs.getString(11);
				String book_brief = rs.getString(12);
				String book_date = rs.getString(13);

				// out객체를 사용해서 출력
				// PrintWriter 객체 생성X --> JSP 내장객체로 이미 선언되어 있음 따로 생성해줄 필요 x
				dto = new T_BookDTO(book_nmae, book_price, book_grade, book_publisher, book_category, book_explain,
						book_author, book_pages, book_img, book_isbn, book_brief, book_date);
				arr.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return arr;
	}

	public ArrayList<T_BookDTO> selectbook(String name) {

		ArrayList<T_BookDTO> arr = new ArrayList<T_BookDTO>();

		try {
			getConn();
			String sql = "select * from t_book where book_name like ?";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + name + "%");
			while (rs.next() == true) {
				String book_nmae = rs.getString(2);
				int book_price = rs.getInt(3);
				int book_grade = rs.getInt(4);
				String book_publisher = rs.getString(5);
				String book_category = rs.getString(6);
				String book_explain = rs.getString(7);
				String book_author = rs.getString(8);
				int book_pages = rs.getInt(9);
				String book_img = rs.getString(10);
				String book_isbn = rs.getString(11);
				String book_brief = rs.getString(12);
				String book_date = rs.getString(13);

				dto = new T_BookDTO(book_nmae, book_price, book_grade, book_publisher, book_category, book_explain,
						book_author, book_pages, book_img, book_isbn, book_brief, book_date);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}
	public ArrayList<T_EvaluationDTO> wishbook() {

		// Select.html 에서 보낸 id 값 받아오기
		// String id = request.getParameter("id");

		ArrayList<T_EvaluationDTO> arr = new ArrayList<T_EvaluationDTO>();

		try {
			getConn();
			String sql = "select * from t_book";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);

			// 6. slq명령문 실행
			// executoUpdate() : DB의 내용에 변경이 일어나는경우, insert, deletd, update
			// 리턴을 int로 해준다. 몇행이 성공 했는지
			// executeQuery() : select문 사용시
			// ResultSet으로 리턴한다.

			rs = psmt.executeQuery();

			// 명령 후 처리

			while (rs.next() == true) {
				String book_nmae = rs.getString(2);
				int book_price = rs.getInt(3);
				int book_grade = rs.getInt(4);
				String book_publisher = rs.getString(5);
				String book_category = rs.getString(6);
				String book_explain = rs.getString(7);
				String book_author = rs.getString(8);
				int book_pages = rs.getInt(9);
				String book_img = rs.getString(10);
				String book_isbn = rs.getString(11);
				String book_brief = rs.getString(12);
				String book_date = rs.getString(13);

				// out객체를 사용해서 출력
				// PrintWriter 객체 생성X --> JSP 내장객체로 이미 선언되어 있음 따로 생성해줄 필요 x
				dto = new T_BookDTO(book_nmae, book_price, book_grade, book_publisher, book_category, book_explain,
						book_author, book_pages, book_img, book_isbn, book_brief, book_date);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return arr;
	}	

}
