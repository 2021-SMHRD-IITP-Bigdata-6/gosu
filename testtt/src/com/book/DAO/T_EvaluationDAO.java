package com.book.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	
	public ArrayList<T_EvaluationDTO> wishbook(){
		
		ArrayList<T_EvaluationDTO> arr = new ArrayList<T_EvaluationDTO>();
		
		try {
			getConn();

			String sql = "select * from T_Evaluation";
			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next() == true) {

				String memid = rs.getString(1);
				String wish = rs.getString(2);

				dto = new T_EvaluationDTO(memid, wish);
				arr.add(dto);

				// QueryString
			} // while

		} catch (Exception e) {
			System.out.println("Ŭ�������� �ε�����");
			e.printStackTrace();
		} finally {

			
		}
		return arr;
	
	}


	
	
		
	


}

