package com.category.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.book.DAO.BookDAO;
import com.book.DTO.BookDTO;

public class categoryDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;

	ResultSet rs = null;
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
	}//close()
	
	/*
	 * public ArrayList<categoryDTO> category(String[] buttonlist) {
	 * 
	 * try { getConn(); String sql = "select * from t_book  = ?"; psmt =
	 * conn.prepareStatement(sql); psmt.setString(1, art);
	 * 
	 * // 6. slq��ɹ� ���� rs = psmt.executeQuery(); // 7. ��� �� ó�� if (rs.next()) {
	 * String aart = rs.getString(1); }
	 * 
	 * } catch (Exception e) { System.out.println("Ŭ�������� �ε�����");
	 * e.printStackTrace(); } finally { close(); }
	 * 
	 * return list; }
	 */
}//DAO
