package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.book.DTO.BookDTO;

public class BookDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	ResultSet rs = null;

	private boolean check;
	BookDTO dto = null;

	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Ŭ���� ���� �ε� �Ϸ�");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			// 3. DB���� ����ϴ� id/pw�� ����
			if (conn != null) {
				System.out.println("���Ἲ��");
			} else {
				System.out.println("�������");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		System.out.println("�����ǽ���");
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
			// 5. SQL��ɹ��� �غ�
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto1.getMem_id());

			// 6. slq��ɹ� ����
			rs = psmt.executeQuery();

			// 7. ��� �� ó��
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
			System.out.println("Ŭ�������� �ε�����");
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
			// 5. SQL��ɹ��� �غ�

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			psmt.setString(3, dto.getMem_name());
			psmt.setString(4, dto.getMem_tel());
			psmt.setInt(5, dto.getMem_age());
			psmt.setString(6, dto.getMem_gender());

			// 6. slq��ɹ� ����
			cnt = psmt.executeUpdate();

			// 7. ��� �� ó��

		} catch (Exception e) {
			System.out.println("Ŭ�������� �ε�����");
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
	public ArrayList<BookDTO> selectMember() {

		// Select.html ���� ���� id �� �޾ƿ���
		// String id = request.getParameter("id");

		ArrayList<BookDTO> arr = new ArrayList<BookDTO>();

		try {
			getConn();
			String sql = "select * from t_member";
			// 5. SQL��ɹ��� �غ�
			psmt = conn.prepareStatement(sql);

			// 6. slq��ɹ� ����
			// executoUpdate() : DB�� ���뿡 ������ �Ͼ�°��, insert, deletd, update
			// ������ int�� ���ش�. ������ ���� �ߴ���
			// executeQuery() : select�� ����
			// ResultSet���� �����Ѵ�.

			rs = psmt.executeQuery();

			// ��� �� ó��

			while (rs.next() == true) {
				String email = rs.getString(1);
				String name = rs.getString(3);
				String tel = rs.getString(4);
				int age = rs.getInt(5);
				String gender = rs.getString(6);
				String date = rs.getString(7);

				// out��ü�� ����ؼ� ���
				// PrintWriter ��ü ����X --> JSP ���尴ü�� �̹� ����Ǿ� ���� ���� �������� �ʿ� x
				dto = new BookDTO(email, name, tel,age,gender,date);
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
		// TODO Auto-generated method stub
		
		// Select.html ���� ���� id �� �޾ƿ���
				// String id = request.getParameter("id");

				ArrayList<BookDTO> arr = new ArrayList<BookDTO>();

				try {
					getConn();
					String sql = "select * from t_member where mem_id like ?";
					// 5. SQL��ɹ��� �غ�
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, "%"+email+"%");
					rs = psmt.executeQuery();
					while (rs.next() == true) {
						String memail = rs.getString(1);
						String name = rs.getString(3);
						String tel = rs.getString(4);
						int age = rs.getInt(5);
						String gender = rs.getString(6);
						String date = rs.getString(7);
						dto = new BookDTO(memail, name, tel,age,gender,date);
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
}
