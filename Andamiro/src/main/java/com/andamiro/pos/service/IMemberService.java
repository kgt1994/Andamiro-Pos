package com.andamiro.pos.service;

import java.util.List;

import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;
import com.andamiro.pos.model.ShopDTO;

public interface IMemberService {
	public void insertMember(MemberDTO dto);
	public LoginDTO selectMember(LoginDTO dto);
	public List<ShopDTO> selectShop(LoginDTO dto);
}
