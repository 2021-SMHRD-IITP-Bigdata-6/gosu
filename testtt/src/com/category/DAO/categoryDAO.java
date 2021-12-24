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
			System.out.println("클래스 파일 로딩 완료");
			
		
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";
			
			conn = DriverManager.getConnection(url,dbid,dbpw);
			
			if(conn!=null) {
				System.out.println("연결성공");
			}else {
				System.out.println("연결실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//getConn()
	public void close() {
	      System.out.println("무조건실행");
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
