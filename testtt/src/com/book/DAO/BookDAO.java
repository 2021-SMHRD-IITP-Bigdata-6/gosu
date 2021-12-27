package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.book.DTO.BookDTO;

public class BookDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	ResultSet rs = null;

	BookDTO dto = null;
	private boolean check;

	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Ŭ���� ���� �ε� �Ϸ�");
			
		
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";
			
			conn = DriverManager.getConnection(url,dbid,dbpw);
			
		

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

					dto = new BookDTO(dto1.getMem_id(), getpw, getname, gettel, getage, getgender, date);

				}

			}

		} catch (Exception e) {
			System.out.println("Ŭ�������� �ε�����");
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}

	public int Join(BookDTO dto) {

		try {
			getConn();
			String sql = "insert into member_Message values (?,?,?,?,sysdate)";
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

}
