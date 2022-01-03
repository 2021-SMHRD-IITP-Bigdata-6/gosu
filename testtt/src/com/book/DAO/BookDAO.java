package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.book.DTO.BookDTO;

public class BookDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	ResultSet rs = null;

	boolean check;
	BookDTO dto = null;
	BookDTO bookDTO;
	BookDTO dto1;
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

	public BookDTO Login(BookDTO dto1) {
		BookDTO bookDTO = null;

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

					bookDTO = new BookDTO(dto1.getMem_id(), getpw, getname, gettel, getage, getgender, date);

				}

			}

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}

		return bookDTO;
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

	public int Update(BookDTO dto, String pw) {

		int cnt = 0;
		try {
			getConn();
			String sql = "update t_member set mem_pw = ?  where mem_id = ? ";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pw);

			psmt.setString(2, dto.getMem_id());
			cnt = psmt.executeUpdate();

			System.out.println("cnt : " + cnt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int Update1(BookDTO dto, String tel) {

		int cnt = 0;
		try {
			getConn();
			String sql = "update t_member set mem_tel = ?  where mem_id = ? ";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, tel);

			psmt.setString(2, dto.getMem_id());
			cnt = psmt.executeUpdate();

			System.out.println("cnt : " + cnt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public int Update2(BookDTO dto, String name) {

		int cnt = 0;
		try {
			getConn();
			String sql = "update t_member set mem_name = ?  where mem_id = ? ";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);

			psmt.setString(2, dto.getMem_id());
			cnt = psmt.executeUpdate();

			System.out.println("cnt : " + cnt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	public int Update3(BookDTO dto, String name) {

		int cnt = 0;
		try {
			getConn();
			String sql = "update t_member set mem_name = ?  where mem_id = ? ";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);

			psmt.setString(2, dto.getMem_id());
			cnt = psmt.executeUpdate();

			System.out.println("cnt : " + cnt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<BookDTO> selectMember() {

		// Select.html 에서 보낸 id 값 받아오기
		// String id = request.getParameter("id");

		ArrayList<BookDTO> arr = new ArrayList<BookDTO>();

		try {
			getConn();
			String sql = "select * from t_member";
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
				String email = rs.getString(1);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				int age = rs.getInt(5);
				String gender = rs.getString(6);
				String date = rs.getString(7);

				// out객체를 사용해서 출력
				// PrintWriter 객체 생성X --> JSP 내장객체로 이미 선언되어 있음 따로 생성해줄 필요 x
				dto = new BookDTO(email, name, tel, age, gender, date);
				arr.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			close();
		}
		return arr;
	}

	public ArrayList<BookDTO> selectMember(String email) {

		ArrayList<BookDTO> arr = new ArrayList<BookDTO>();

		try {
			getConn();
			String sql = "select * from t_member where mem_id like ?";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + email + "%");
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				String memail = rs.getString(1);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				int age = rs.getInt(5);
				String gender = rs.getString(6);
				String date = rs.getString(7);
				dto = new BookDTO(memail, name, tel, age, gender, date);
				arr.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}

	public int Delete(String email) {

		try {
			getConn();
			String sql = " delete from t_member where mem_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, email);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return cnt;

	}

	public boolean emailCheck(String email) {

		try {
			getConn();
			String sql = "select * from t_member where mem_id = ?";
			// 5. SQL명령문을 준비
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, email);

			// 6. slq명령문 실행
			rs = psmt.executeQuery();

			check = rs.next();

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			close();
		}

		return check;
	}

}
