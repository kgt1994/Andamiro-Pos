package com.andamiro.pos.service;

import com.andamiro.pos.model.LoginDTO;
import com.andamiro.pos.model.MemberDTO;

public interface IMemberService {
	public void insertMember(MemberDTO dto);
	public LoginDTO selectMember(LoginDTO dto);
}
