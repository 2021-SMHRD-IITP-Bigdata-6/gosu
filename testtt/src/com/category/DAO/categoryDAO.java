package com.category.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class categoryDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	//memberDTO dto = null;
	private boolean check;
	
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Ŭ���� ���� �ε� �Ϸ�");
			
		
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";
			
			conn = DriverManager.getConnection(url,dbid,dbpw);
			
			if(conn!=null) {
				System.out.println("���Ἲ��");
			}else {
				System.out.println("�������");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//getConn()
	public void close() {
	      System.out.println("�����ǽ���");
	      try {
	         if (rs != null) {
	            rs.close();
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
	
}//DAO
