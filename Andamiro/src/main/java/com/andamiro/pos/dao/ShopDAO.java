package com.andamiro.pos.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.andamiro.pos.model.SessionDTO;
import com.andamiro.pos.model.ShopDTO;

@Repository
public class ShopDAO implements IShopDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<ShopDTO> selectShop(SessionDTO dto) {
		// TODO Auto-generated method stub
		System.out.println("select Shop() 처리");
		return mybatis.selectList("ShopService.selectShop", dto);
	}

	@Override
	public int selectPw(ShopDTO dto) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("ShopService.selectPw", dto);
	}

}
