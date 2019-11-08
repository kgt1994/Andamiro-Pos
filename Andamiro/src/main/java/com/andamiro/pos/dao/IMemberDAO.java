package com.andamiro.pos.dao;

import java.util.List;

import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;
import com.andamiro.pos.model.ShopDTO;

public interface IMemberDAO {
	public void insertMember(MemberDTO dto);
	public LoginDTO selectMember(LoginDTO dto);
	public List<ShopDTO> selectShop(LoginDTO dto);
}
