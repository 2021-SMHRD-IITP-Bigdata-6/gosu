package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.book.DTO.ListDTO;

public class ListDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	ListDTO ldto = null;

	BookDAO bdao = new BookDAO();

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

		System.out.println("������ ����");

		try {
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public ArrayList<ListDTO> selectList() {

		ArrayList<ListDTO> book_ar = new ArrayList<ListDTO>();

		try {

			getConn();

			String sql = "select * from t_book";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {

				String book_name = rs.getString(2);
				int book_price = rs.getInt(3);
				int book_grade = rs.getInt(4);
				String book_publisher = rs.getString(5);
				String book_category = rs.getString(6);
				String book_author = rs.getString(7);

				ldto = new ListDTO(book_name, book_price, book_grade, book_publisher, book_category, book_author);
				book_ar.add(ldto);
				
			}
			
		} catch (Exception e) {
			System.out.println("Ŭ���� ���� ����");
			e.printStackTrace();
		} finally {
			close();
		}
		return book_ar;
	}

	public ArrayList<ListDTO> searchList(String list_name) {
		System.out.println(list_name);
		ArrayList<ListDTO> list_ar = new ArrayList<ListDTO>();

		try {

			getConn();

			String sql = "select * from t_list where list_name like ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + list_name + "%");
			rs = psmt.executeQuery();

			while (rs.next()) {

				String book_name = rs.getString(2);
				int book_price = rs.getInt(3);
				int book_grade = rs.getInt(4);
				String book_publisher = rs.getString(5);
				String book_category = rs.getString(6);
				String book_author = rs.getString(7);

				ldto = new ListDTO(book_name, book_price, book_grade, book_publisher, book_category, book_author);
				list_ar.add(ldto);
				System.out.println(book_name);
			}

		} catch (Exception e) {
			System.out.println("Ŭ���� ���� ����");
			e.printStackTrace();
		} finally {
			close();
		}
		return list_ar;

	}

}
