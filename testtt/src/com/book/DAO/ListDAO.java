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
			System.out.println("클래스 파일 로딩 완료");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_3_1216";
			String dbpw = "smhrd3";

			conn = DriverManager.getConnection(url, dbid, dbpw);

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

		System.out.println("무조건 실행");

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

		ArrayList<ListDTO> list_ar = new ArrayList<ListDTO>();

		try {

			getConn();

			String sql = "select * from t_list";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {

				String list_name = rs.getString(2);
				String list_writer = rs.getString(3);
				String list_link = rs.getString(4);
				String list_genre = rs.getString(5);

				ldto = new ListDTO(list_name, list_writer, list_link, list_genre);
				list_ar.add(ldto);
				
			}

		} catch (Exception e) {
			System.out.println("클래스 파일 오류");
			e.printStackTrace();
		} finally {
			close();
		}
		return list_ar;
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

				String wlist_name = rs.getString(2);
				String list_writer = rs.getString(3);
				String list_link = rs.getString(4);
				String list_genre = rs.getString(5);

				ldto = new ListDTO(wlist_name, list_writer, list_link, list_genre);
				list_ar.add(ldto);
				System.out.println(wlist_name);
			}

		} catch (Exception e) {
			System.out.println("클래스 파일 오류");
			e.printStackTrace();
		} finally {
			close();
		}
		return list_ar;

	}

}
