package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.coyote.Request;

import com.book.DTO.BookDTO;


public class BookDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	ResultSet rs = null;

	private boolean check;
	private BookDTO BookDTO;
	private String sql;
	private BookDTO dto1;
	private Statement stmt;
	private com.book.DTO.BookDTO dto;

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
	}

	public BookDTO Login(BookDTO dto1) {
		BookDTO BookDTO = null;
		
		try {
			getConn();
			String sql = "select * from t_member where mem_id = ?";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto1.getMem_id());

			// 6. slq명령문 실행
			rs = psmt.executeQuery();

			// 7. 명령 후 처리
			if (rs.next()) {

				String getpw = rs.getString(2);
				String getname = rs.getString(3);
				String gettel = rs.getString(4);
				int getage = rs.getInt(5);
				String getgender = rs.getString(6);
				String date = rs.getString(7);

				System.out.println(dto1.getMem_id());
				System.out.print(getpw);

				if (dto1.getMem_pw().equals(getpw)) {

					BookDTO = new BookDTO(dto1.getMem_id(), getpw, getname, gettel, getage, getgender, date);

				}

			}

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}
		
		return BookDTO;
	}

	public int Join(BookDTO dto) {

		try {
			getConn();
			String sql = "insert into t_member values (?,?,?,?,?,?,sysdate)";
			// 5. SQL명령문을 준비

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			psmt.setString(3, dto.getMem_name());
			psmt.setString(4, dto.getMem_tel());
			psmt.setInt(5, dto.getMem_age());
			psmt.setString(6, dto.getMem_gender());

			// 6. slq명령문 실행
			cnt = psmt.executeUpdate();

			// 7. 명령 후 처리

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	

	public int Update(String pw) {

		int cnt = 0;
		try {
			getConn();
			String sql = "update t_member set mem_pw = ?  where mem_id = 'admin@naver.com' ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pw);
//			psmt.setString(2, dto.getMem_id());
			cnt = psmt.executeUpdate();
			
			System.out.println("cnt : " + cnt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	public class DAO{
		
	}
public ArrayList<BookDTO> selectMember(String user_id) {
		
		ArrayList<BookDTO> arr = new ArrayList<BookDTO>();
		
		try { // db연결코드
			
			getConn();
			
			// 5 .SQL명령문을 준비 //콘솔창에입력 ? 써야한다
			String sql = "select * from t_member";
			
			psmt = conn.prepareStatement(sql);
			rs= psmt.executeQuery(); 
			
			while (rs.next()) {
				
				String muser_id = rs.getString(1);
				String user_pw = rs.getString(2);
				String user_email = rs.getString(3);
				String user_tel = rs.getString(4);
				String user_addr = rs.getString(5);
				String user_gender = rs.getString(6);
				String user_joindate = rs.getString(7);
				String user_yesno = rs.getString(8);

				dto = new BookDTO(muser_id, user_pw, user_email, user_tel, user_addr, user_gender, user_joindate, user_yesno);
				arr.add(dto);
				
			} 
			
			
		} catch (Exception e) {
			System.out.println("클래스파일 로딩 실패");
			e.printStackTrace();// try 문 안에서 오류확인하는 코드

		} finally { // 코드가 오류가榮 안榮 무조건 실행
			
			close();

		}
		
		return arr;
		
	}
	
	public boolean emailCheck(String user_id) {
		
		try { 

			getConn();
			
			String sql = "select * from t_member where mem_id = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			
			rs = psmt.executeQuery();

			check = rs.next();
			
		} catch (Exception e) {
			System.out.println("클래스파일 로딩 실패");
			e.printStackTrace();

		} finally { 
			
			close();

		}
		
		return check;
	}
	

	
}
