package com.hi.spring02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.hi.spring02.BookVO;

public class BookVAO {
	public void create(BookVO vo) {
		System.out.println("vo에서 전달받은 값:" + vo);
		try {
			// 1. Connector 라이브러리 설정
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. Connector 라이브러리 설정 성공 @@");
			// 2. db 연결 승인된 사용자 (ip+port, user(root), pw db명(big))
			String url = "jdbc:mysql://localhost:3366/big";
			String user = "root";
			String pass = "1234";
			Connection con = DriverManager.getConnection(url, user, pass);
			System.out.println("2. db연결 성공 @@");
			// 3. SQL생성
			String sql = "insert into book values (?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getName());
			ps.setString(3,  vo.getUrl());
			ps.setString(4, vo.getImg());
			System.out.println("3. SQL객체생성성공");

			// 4. 생성한 sql문을 mysql로 보낸다.
			ps.executeUpdate();
			System.out.println("4. sql문을 mysql로 보낸다");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void update(BookVO vo) {
		System.out.println("회원정보업데이트요청");
		System.out.println("vo에서 전달받은 값:" + vo);

		String id = vo.getId();
		String name = vo.getName();
		String urlB = vo.getUrl();
		String img = vo.getImg();
		try {
			// 1. Connector 라이브러리 설정
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. Connector 라이브러리 설정 성공 @@");
			// 2. db 연결 승인된 사용자 (ip+port, user(root), pw db명(big))
			String url = "jdbc:mysql://localhost:3366/big";
			String user = "root";
			String pass = "1234";
			Connection con = DriverManager.getConnection(url, user, pass);
			System.out.println("2. db연결 성공 @@");
			// 3. SQL생성
			String sql = "UPDATE book set tel=?  where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, id);
			System.out.println("3. SQL객체생성성공");

			// 4. 생성한 sql문을 mysql로 보낸다.
			ps.executeUpdate();
			System.out.println("4. sql문을 mysql로 보낸다");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void delete(BookVO vo) {
		System.out.println("회원정보 삭제");
		String id = vo.getId();

		try {
			// 1. Connector 라이브러리 설정
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1. Connector 라이브러리 설정 성공 @@");
			// 2. db 연결 승인된 사용자 (ip+port, user(root), pw db명(big))
			String url = "jdbc:mysql://localhost:3366/big";
			String user = "root";
			String pass = "1234";
			Connection con = DriverManager.getConnection(url, user, pass);
			System.out.println("2. db연결 성공 @@");
			// 3. SQL생성
			String sql = "DELETE FROM book where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3. SQL객체생성성공");

			// 4. 생성한 sql문을 mysql로 보낸다.
			ps.executeUpdate();
			System.out.println("4. sql문을 mysql로 보낸다");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
