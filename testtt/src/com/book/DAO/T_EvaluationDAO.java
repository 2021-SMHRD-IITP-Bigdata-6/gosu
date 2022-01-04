package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.book.DTO.T_BookDTO;
import com.book.DTO.T_EvaluationDTO;


public class T_EvaluationDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	T_EvaluationDTO dto = null;
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
	
	public ArrayList<T_EvaluationDTO> isbn(T_EvaluationDTO dto) {

		ArrayList<T_EvaluationDTO> arr = new ArrayList<T_EvaluationDTO>();

		try {
			getConn();
			String sql = "select * from t_Evaluation where BOOK_ISBN = ?";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);
			// psmt.setString(1,dto );
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				String mem_id = rs.getString(1);
				int book_seq = rs.getInt(3);
				String wish_yn = rs.getString(2);
				String book_isbn = rs.getString(4);
				
				
				 dto = new T_EvaluationDTO(mem_id, wish_yn, book_seq, book_isbn);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
		}
		return arr;
	}
	public ArrayList<T_EvaluationDTO> wishbook() {

		// Select.html 에서 보낸 id 값 받아오기
		// String id = request.getParameter("id");

		ArrayList<T_EvaluationDTO> arr = new ArrayList<T_EvaluationDTO>();

		try {
			getConn();
			String sql = "select * from t_Evaluation";
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
				String mem_id = rs.getString(1);
				int book_seq = rs.getInt(3);
				String wish_yn = rs.getString(2);
				String book_isbn = rs.getString(4);

				// out객체를 사용해서 출력
				// PrintWriter 객체 생성X --> JSP 내장객체로 이미 선언되어 있음 따로 생성해줄 필요 x
				dto = new T_EvaluationDTO(mem_id, wish_yn, book_seq, book_isbn);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			
		}
		return arr;
	}	
	
}

