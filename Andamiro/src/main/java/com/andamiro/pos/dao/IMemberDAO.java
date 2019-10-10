package com.andamiro.pos.dao;

import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;

public interface IMemberDAO {
	public void insertMember(MemberDTO dto);
	public LoginDTO selectMember(LoginDTO dto);
}
