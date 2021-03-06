package com.hi.spring02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hi.spring02.BookVO;
@Component //싱글톤으로 만들어달라고 스프링에게 요청
public class BookVAO {
	
	
	@Autowired
	SqlSessionTemplate my;
	//싱글 톤으로 만들 mybatis객체의 주소를 찾아서 my변수에 넣어라. 
	//DAO부품안에 myBatis부품을 끼워넣음. 의존성(Dependency) Injection(주입): 의존성 주입(DI)
	// 의존성:해당 부품이 반드시 필요하다는 의미
	//의존성을 표현하고싶으면 ram에 만들어 놓은 주소를 쓰는 클래스의 변수에 주소를 넣어주어라,.(주입)
	
	public int create(BookVO vo) {
		System.out.println("회원정보 추가");
		return my.insert("book.create",vo);
		
	}

	public int update(BookVO vo) {
		System.out.println("회원정보 업데이트");
		return my.update("book.up",vo);
		
	}

	public int delete(BookVO vo) {
		System.out.println("회원정보 삭제");
		return my.delete("book.del",vo);
		
	
	}
	
	public BookVO read(BookVO vo) {
		System.out.println("회원정보 삭제");
		return my.selectOne("book.one",vo);

	}
	
	public List<BookVO> all () {
		System.out.println("회원정보 삭제");
		return my.selectList("book.all");

	}
		
}
