package com.andamiro.pos.service;

import java.util.List;

import com.andamiro.pos.model.SessionDTO;
import com.andamiro.pos.model.ShopDTO;

public interface IShopService {

	public List<ShopDTO> selectShop(SessionDTO dto);
	public int pwCheck(ShopDTO dto);
}
