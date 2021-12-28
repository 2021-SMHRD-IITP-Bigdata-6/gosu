package com.member.DAO;

import java.lang.reflect.Member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.member.DTO.MypageDTO;

public class MyPageDAO {

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		Member member =null;
		
		
		int cnt = 0;
		MypageDTO dto = null;
	
	
}
