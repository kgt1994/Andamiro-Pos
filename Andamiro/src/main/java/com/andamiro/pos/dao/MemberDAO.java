package com.andamiro.pos.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.andamiro.pos.model.MemberDTO;

@Repository
public class MemberDAO implements IMemberDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertMember(MemberDTO dto) {
		System.out.println("insert Member() 처리");
		mybatis.insert("memberService.insertMember", dto);
	}
	
}
