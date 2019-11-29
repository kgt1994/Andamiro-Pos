package com.andamiro.pos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.andamiro.pos.dao.IShopDAO;
import com.andamiro.pos.model.SessionDTO;
import com.andamiro.pos.model.ShopDTO;

@Service("IShopService")
public class ShopService implements IShopService{
	@Autowired
	private IShopDAO dao;
	
	@Override
	public List<ShopDTO> selectShop(SessionDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectShop(dto);
	}
}
