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
	
	public ArrayList<T_EvaluationDTO> isbn(T_EvaluationDTO dto) {

		ArrayList<T_EvaluationDTO> arr = new ArrayList<T_EvaluationDTO>();

		try {
			getConn();
			String sql = "select * from t_Evaluation where BOOK_ISBN = ?";
			// 5. SQL��ɹ��� �غ�
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

		// Select.html ���� ���� id �� �޾ƿ���
		// String id = request.getParameter("id");

		ArrayList<T_EvaluationDTO> arr = new ArrayList<T_EvaluationDTO>();

		try {
			getConn();
			String sql = "select * from t_Evaluation";
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
				String mem_id = rs.getString(1);
				int book_seq = rs.getInt(3);
				String wish_yn = rs.getString(2);
				String book_isbn = rs.getString(4);

				// out��ü�� ����ؼ� ���
				// PrintWriter ��ü ����X --> JSP ���尴ü�� �̹� ����Ǿ� ���� ���� �������� �ʿ� x
				dto = new T_EvaluationDTO(mem_id, wish_yn, book_seq, book_isbn);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			
		}
		return arr;
	}	
	
}

