package com.category.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;
import com.book.DTO.T_BookDTO;

public class categoryDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	T_BookDTO dto = null;

	ResultSet rs = null;

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
	}// close()

	public ArrayList<T_BookDTO> selectbook() {

		// Select.html ���� ���� id �� �޾ƿ���
		// String id = request.getParameter("id");

		ArrayList<T_BookDTO> arr = new ArrayList<T_BookDTO>();

		try {
			getConn();
			String sql = "select * from t_book";
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
				String book_nmae = rs.getString(2);
				String book_img = rs.getString(10);

				// out��ü�� ����ؼ� ���
				// PrintWriter ��ü ����X --> JSP ���尴ü�� �̹� ����Ǿ� ���� ���� �������� �ʿ� x
				dto = new T_BookDTO(book_nmae, book_img);
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
			// 5. SQL��ɹ��� �غ�
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + name + "%");
			rs = psmt.executeQuery();
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
				
				 dto = new T_BookDTO(book_nmae, book_price, book_grade, book_publisher, book_category, book_explain, book_author, book_pages, book_img, book_isbn, book_brief, book_date);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}//selectbook()
	public ArrayList<T_BookDTO> category(String category) {

		ArrayList<T_BookDTO> arr = new ArrayList<T_BookDTO>();
		
		try {
			getConn();
			String sql = "select * from t_book where book_category like ?";
			// 5. SQL��ɹ��� �غ�
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + category + "%");
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				String book_category = rs.getString(6);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}//selectbook()
}// DAO
