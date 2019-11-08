package com.andamiro.pos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andamiro.pos.dao.IMemberDAO;
import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;
import com.andamiro.pos.model.ShopDTO;

@Service("IMemberService")
public class MemberServiceImpl implements IMemberService{
	@Autowired
	private IMemberDAO dao;

	@Override
	public void insertMember(MemberDTO dto) {
		// TODO Auto-generated method stub
		dao.insertMember(dto);
	}

	@Override
	public LoginDTO selectMember(LoginDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectMember(dto);
	}

	@Override
	public List<ShopDTO> selectShop(LoginDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectShop(dto);
	}
}
