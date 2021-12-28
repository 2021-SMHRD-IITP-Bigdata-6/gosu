package com.member.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MypageDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	
	public int Update(String pw) {

		int cnt = 0;
		try {
			getConn();
			String sql = "update t_member set mem_pw = ?  where mem_id = ? ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pw);
//			psmt.setString(2, dto.getMem_id());
			cnt = psmt.executeUpdate();
			
			System.out.println("cnt : " + cnt);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	private void close() {
		
	}

	private void getConn() {
	}
	
}
