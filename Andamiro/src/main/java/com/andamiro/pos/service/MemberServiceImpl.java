package com.andamiro.pos.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andamiro.pos.dao.IMemberDAO;
import com.andamiro.pos.model.MemberDTO;

@Service("IMemberService")
public class MemberServiceImpl implements IMemberService{
	@Autowired
	private IMemberDAO dao;

	@Override
	public void insertMember(MemberDTO dto) {
		// TODO Auto-generated method stub
		dao.insertMember(dto);
	}
}
