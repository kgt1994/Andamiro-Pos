package com.andamiro.pos.dao;

import java.util.List;

import com.andamiro.pos.model.SessionDTO;
import com.andamiro.pos.model.ShopDTO;

public interface IShopDAO {
	public List<ShopDTO> selectShop(SessionDTO dto);
}
