package com.member.DAO;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.book.DTO.BookDTO;
import com.member.DTO.MypageDTO;

public class MyPageDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	Statement stmt = null;
	BookDTO dto = null;
	private boolean check;
	private String driver;

	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스 파일 로딩 완료");
			
		
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";
			
			conn = DriverManager.getConnection(url,dbid,dbpw);

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
		try {
			if(rs!=null) rs.close();
			if(stmt!=null) ((Connection) stmt).close();
			if(conn!=null) conn.close();
			
		} catch (Exception e) {
			
		}
	
	}
	
	public MypageDTO selectAccountone(MypageDTO user) {
		
		String sql = "select * from account where id='%s' and pw='%s'";
		
		try {
			stmt = (Statement) conn.createStatement();
			rs = ((java.sql.Statement) stmt).executeQuery(sql);
			
			rs.next();
			
			MypageDTO dto = new MypageDTO();
			
			dto.setMem_id(rs.getString("mem_id"));
			dto.setMem_pw(rs.getString("mem_pw"));
			dto.setMem_name(rs.getString("mem_name"));
			dto.setMem_tel(rs.getString("mem_tel"));
			dto.setMem_age(rs.getString("mem_age"));
			dto.setMem_gender(rs.getString("mem_gender"));
			dto.setDate(rs.getString("mem_id"));
			
			return dto;
			
		} catch (Exception e) {
			System.out.println("확인확인"+ e.getMessage());
		}finally {
			close();
		}
		
		return null;
		
	}
	
	
}